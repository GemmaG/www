#!/bin/sh -e
cd bin && make && cd ..
cd updates && ../bin/_build/lib/www.native ../pages && cd ..
cd pages && env PATH=../ucampas:$PATH ucampas -i -r1 index people projects activity
