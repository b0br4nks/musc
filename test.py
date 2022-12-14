#!/usr/bin/env python3

import sys
import os
import subprocess
import shlex
from typing import BinaryIO, Tuple

def cmd_run_echoed(cmd, **kwargs):
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    return subprocess.run(cmd, **kwargs)

def read_field(f: BinaryIO, name: bytes) -> bytes:
    line = f.readline()
    field = b': ' + name + b' '
    assert line.startswith(field)
    assert line.endswith(b'\n')
    return line[len(field):-1]

def load_test_case(file_path: str) -> Tuple[int, bytes, bytes]:
    with open(file_path, "rb") as f:
        returncode = int(read_field(f, b'returncode'))
        stdout_len = int(read_field(f, b'stdout'))
        stdout = f.read(stdout_len)
        assert f.read(1) == b'\n'
        stderr_len = int(read_field(f, b'stderr'))
        stderr = f.read(stderr_len)
        assert f.read(1) == b'\n'
        return (returncode, stdout, stderr)

def save_test_case(file_path: str, returncode: int, stdout: bytes, stderr: bytes):
    with open(file_path, "wb") as f:
        f.write(b": returncode %d\n" % returncode)
        f.write(b": stdout %d\n" % len(stdout))
        f.write(stdout)
        f.write(b"\n")
        f.write(b": stderr %d\n" % len(stderr))
        f.write(stderr)
        f.write(b"\n")

def test(folder: str):
    s_failed = 0
    c_failed = 0
    for entry in os.scandir(folder):
        skorpio_ext = '.sko'
        if entry.is_file() and entry.path.endswith(skorpio_ext):
            print('[INFO] Testing %s' % entry.path)

            txt_path = entry.path[:-len(skorpio_ext)] + ".txt"
            (expected_returncode, expected_output, expected_error) = load_test_case(txt_path)

            sim_cmd = cmd_run_echoed([sys.executable, "./skorpio.py", "-s", entry.path], capture_output=True)
            sim_returncode = sim_cmd.returncode
            sim_output = sim_cmd.stdout
            sim_error = sim_cmd.stderr
            if sim_returncode != expected_returncode or sim_output != expected_output or sim_error != expected_error:
                sim_failed += 1
                print("[ERROR] Unexpected simulation output")
                print("  Expected:")
                print("    return code: %s" % expected_returncode)
                print("    stdout: %s" % expected_output.decode("utf-8"))
                print("    stderr: %s" % expected_error.decode("utf-8"))
                print("  Actual:")
                print("    return code: %s" % sim_returncode)
                print("    stdout: %s" % sim_output.decode("utf-8"))
                print("    stderr: %s" % sim_error.decode("utf-8"))

            com_cmd = cmd_run_echoed([sys.executable, "./skorpio.py", "-c", "-r", "--silent", entry.path], capture_output=True)
            com_returncode = com_cmd.returncode
            com_output = com_cmd.stdout
            com_error = com_cmd.stderr
            if com_returncode != expected_returncode or com_output != expected_output or com_error != expected_error:
                c_failed += 1
                print("[ERROR] Unexpected compilation output")
                print("  Expected:")
                print("    return code: %s" % expected_returncode)
                print("    stdout: %s" % expected_output.decode("utf-8"))
                print("    stderr: %s" % expected_error.decode("utf-8"))
                print("  Actual:")
                print("    return code: %s" % com_returncode)
                print("    stdout: %s" % com_output.decode("utf-8"))
                print("    stderr: %s" % com_error.decode("utf-8"))
    print()
    print("     Simulation failed: %d, Compilation failed: %d\n" % (s_failed, c_failed))
    if s_failed != 0 or c_failed != 0:
        exit(1)

def record(folder: str, mode: str='-s'):
    for entry in os.scandir(folder):
        skorpio_ext = '.sko'
        if entry.is_file() and entry.path.endswith(skorpio_ext):
            if mode == '-s':
                output = cmd_run_echoed([sys.executable, "./skorpio.py", "-s", entry.path], capture_output=True)
            elif mode == '-c':
                output = cmd_run_echoed([sys.executable, "./skorpio.py", "-c", "-r", "-s", entry.path], capture_output=True)
            else:
                print("[ERROR] Unknown record mode `%s`" % mode)
                exit(1)
            txt_path = entry.path[:-len(skorpio_ext)] + ".txt"
            print("[INFO] Saving output to %s" % txt_path)
            save_test_case(txt_path, output.returncode, output.stdout, output.stderr)

def usage(exe_name: str):
    print("Usage: ./test.py [OPTIONS] [SUBCOMMAND]")
    print("OPTIONS:")
    print("    -f <folder> Folder with the tests. (Default: ./tests/)")
    print("SUBCOMMANDS:")
    print("    -t          Run the tests. ")
    print("    -r  [-com]  Record expected output of the tests.")
    print("    -c          Clean the directory.")
    print("    -h          Print this message to stdout and exit with 0 code.(Default when no subcommand is provided)")

# NOTE: temporary
def clean(folder):
    for entry in os.scandir(folder):
        if entry.is_file() and not entry.path.endswith('.sko') and not entry.path.endswith('.txt'):
            os.remove(entry.path)

if __name__ == '__main__':
    exe_name, *argv = sys.argv

    folder = "./tests/"
    subcmd = "-h"

    while len(argv) > 0:
        arg, *argv = argv
        if arg == '-f':
            if len(argv) == 0:
                print("[ERROR] no <folder> is provided for option `-f`")
                exit(1)
            folder, *argv = argv
        else:
            subcmd = arg
            break

    if subcmd == '-r':
        mode = '-s'
        while len(argv) > 0:
            arg, *argv = argv
            if arg == '-c':
                mode  = 'c'
            else:
                print("[ERROR] Unknown flag `%s`" % arg)
                exit(1)
        record(folder, mode)
    elif subcmd == '-t':
        test(folder)
    elif subcmd == '-c':
        clean(folder)
    elif subcmd == '-h':
        usage(exe_name)
    else:
        usage(exe_name)
        print("[ERROR] unknown subcommand `%s`" % subcmd, file=sys.stderr)
        exit(1)
