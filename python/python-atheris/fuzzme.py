#!/usr/local/bin/python3

import atheris
import sys


def TestOneInput(data):
    if data.startswith(b"b"):
        if data[1:].startswith(b"u"):
            if data[2:].startswith(b"g"):
                return 1 / 0


atheris.Setup(sys.argv, TestOneInput)
atheris.Fuzz()
