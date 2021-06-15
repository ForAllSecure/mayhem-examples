#!/usr/local/bin/python3

import atheris
import sys

def TestOneInput(data):
    if len(data) >= 3 :    
        if data[0] == ord('b'):
            if data[1] == ord('u'):
                if data[2] == ord('g'):
                    return 1 / 0

atheris.Setup(sys.argv, TestOneInput)
atheris.Fuzz()
