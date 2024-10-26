#!/usr/bin/python3

import os, re, sys

def expand(pattern):
    out = ''
    for c in pattern:
        if c == '.':
            out += '\\.'
        elif c == '*':
            out += '.*'
        else:
            out += c
    return out

def find_in_dir(path, pattern):
    path_to_walk = path
    if not path_to_walk:
        path_to_walk = '.'
    if not path:
        path = ''

    for root, dirs, files in os.walk(path):
        dirs.sort()
        files.sort()
        for file in files:
            if re.search(pattern, file):
                print(f'{path}{file}')

        for dir in dirs:
            find_in_dir(f'{path}{dir}/', pattern)


print(f'expanded: {expand(sys.argv[1])}')
# find_in_dir(None, sys.argv[1])