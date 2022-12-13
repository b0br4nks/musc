#!/usr/bin/env python3

import sys
import os
import subprocess
import shlex

def cmd_run_echoed(cmd, **kwargs):
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    cmd = subprocess.run(cmd, **kwargs)
    if cmd.returncode != 0:
        print(cmd.stdout.decode('utf-8'), file=sys.stdout)
        print(cmd.stderr.decode('utf-8'), file=sys.stderr)
        exit(cmd.returncode)
    return cmd

def test(folder):
    s_failed = 0
    c_failed = 0
    for entry in os.scandir(folder):
        skorpio_ext = '.sko'
        if entry.is_file() and entry.path.endswith(skorpio_ext):
            print('[INFO] Testing %s' % entry.path)

            txt_path = entry.path[:-len(skorpio_ext)] + ".txt"
            expected_output = None
            with open(txt_path, "rb") as f:
                expected_output = f.read()

            sim_output = cmd_run_echoed(["./skorpio.py", "-s", entry.path], capture_output=True).stdout
            if sim_output != expected_output:
                s_failed += 1
                print("[ERROR] Unexpected simulation output")
                print("  Expected:")
                print("    %s" % expected_output)
                print("  Actual:")
                print("    %s" % sim_output)
                # exit(1)

            com_output = cmd_run_echoed(["./skorpio.py", "-c", "-r", "--silent", entry.path], capture_output=True).stdout
            if com_output != expected_output:
                c_failed += 1
                print("[ERROR] Unexpected compilation output")
                print("  Expected:")
                print("    %s" % expected_output)
                print("  Actual:")
                print("    %s" % com_output)
                # exit(1)

    print()
    print("     Simulation failed: %d, Compilation failed: %d\n" % (s_failed, c_failed))
    if s_failed != 0 or c_failed != 0:
        exit(1)

def record(folder, mode='-s'):
    for entry in os.scandir(folder):
        skorpio_ext = '.sko'
        if entry.is_file() and entry.path.endswith(skorpio_ext):
            # sim_output = cmd_run_echoed(["./skorpio.py", "-s", entry.path], capture_output=True).stdout
            output = ""
            if mode == '-s':
                output == cmd_run_echoed(["./skorpio.py", "-s", entry.path], capture_output=True).stdout
            elif mode == '-c':
                output == cmd_run_echoed(["./skorpio.py", "-c", "-r", "-s", entry.path], capture_output=True).stdout
            else:
                print("[ERROR] Unknown record mode `%s`" % mode)
                exit(1)
            txt_path = entry.path[:-len(skorpio_ext)] + ".txt"
            print("[INFO] Saving output to %s" % txt_path)
            with open(txt_path, "wb") as txt_file:
                txt_file.write(output)

def usage(exe_name):
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
