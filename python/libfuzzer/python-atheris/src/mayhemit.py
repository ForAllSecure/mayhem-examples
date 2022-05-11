#!/usr/local/bin/python3

import atheris
import sys
import os

def TestOneInput(data):
    if len(data) >= 3 :    
        if data[0] == ord('b'):
            if data[1] == ord('u'):
                if data[2] == ord('g'):
                    raise Exception("Made it to the bug!")

atheris.instrument_all()
atheris.Setup(sys.argv, TestOneInput)
atheris.Fuzz()
