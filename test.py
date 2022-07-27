#!/usr/bin/env python3

import sys
import os
import subprocess
import shlex

def cmd_run_echoed(cmd, **kwargs):
    print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    return subprocess.run(cmd, **kwargs)

if __name__ == '__main__':
    for entry in os.scandir("./tests/"):
        musc_ext = '.musc'
        if entry.is_file() and entry.path.endswith(musc_ext):
            print('[INFO] Testing %s' % entry.path)
            sim_output = cmd_run_echoed(["./musc.py", "-s", entry.path], capture_output=True, check=True).stdout
            cmd_run_echoed(["./musc.py", "-c", entry.path], check=True)
            com_output = cmd_run_echoed([entry.path[:-len(musc_ext)]], capture_output=True, check=True).stdout
            if sim_output != com_output:
                print("[ERROR] Output discrepancy between simulation and compilation")
                print("  Simulation output:")
                print("    %s" % sim_output)
                print("  Compilation output:")
                print("    %s" % com_output)
                exit(1)
            else:
                print('[INFO] %s OK' % entry.path)

