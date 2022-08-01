#!/usr/bin/env python3

import sys
import os
import subprocess
import shlex

def cmd_run_echoed(cmd, **kwargs):
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    return subprocess.run(cmd, **kwargs)

def test():
    s_failed = 0
    c_failed = 0
    for entry in os.scandir("./tests/"):
        musc_ext = '.musc'
        if entry.is_file() and entry.path.endswith(musc_ext):
            print('[INFO] Testing %s' % entry.path)

            txt_path = entry.path[:-len(musc_ext)] + ".txt"
            expected_output = None
            with open(txt_path, "rb") as f:
                expected_output = f.read()

            sim_output = cmd_run_echoed(["./musc.py", "-s", entry.path], capture_output=True, check=True).stdout
            if sim_output != expected_output:
                s_failed += 1
                print("[ERROR] Unexpected simulation output")
                print("  Expected:")
                print("    %s" % expected_output)
                print("  Actual:")
                print("    %s" % sim_output)
                # exit(1)

            cmd_run_echoed(["./musc.py", "-c", entry.path], check=True)
            com_output = cmd_run_echoed([entry.path[:-len(musc_ext)]], capture_output=True, check=True).stdout
            if com_output != expected_output:
                c_failed += 1
                print("[ERROR] Unexpected compilation output")
                print("  Expected:")
                print("    %s" % expected_output)
                print("  Actual:")
                print("    %s" % com_output)
                # exit(1)

    print()
    print("Simulation failed: %d, Compilation failed: %d" % (s_failed, c_failed))
    if s_failed != 0 or c_failed != 0:
        exit(1)

def record():
    for entry in os.scandir("./tests/"):
        musc_ext = '.musc'
        if entry.is_file() and entry.path.endswith(musc_ext):
            sim_output = cmd_run_echoed(["./musc.py", "-s", entry.path], capture_output=True, check=True).stdout
            txt_path = entry.path[:-len(musc_ext)] + ".txt"
            print("[INFO] Saving output to %s" % txt_path)
            with open(txt_path, "wb") as txt_file:
                txt_file.write(sim_output)

def usage(exe_name):
    print("Usage: ./test.py [SUBCOMMAND]")
    print("SUBCOMMANDS:")
    print("    -t          Run the tests. ")
    print("    -r          Record expected output of the tests.")
    print("    -h          Print this message to stdout and exit with 0 code.(Default when no subcommand is provided)")

if __name__ == '__main__':
    exe_name, *argv = sys.argv

    if len(argv) == 0:
        usage(exe_name)
    else:
        subcmd, *argv = argv
        if subcmd == '-r':
            record()
        elif subcmd == '-t':
            test()
        elif subcmd == '-h':
            usage(exe_name)
        else:
            usage(exe_name)
            print("[ERROR] unknown subcommand `%s`" % subcmd, file=sys.stderr)
            exit(1);

