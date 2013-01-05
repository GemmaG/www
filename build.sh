#!/bin/sh -e
cd updates && ocl-reporter ../pages && cd ..
cd pages && env PATH=../ucampas:$PATH ucampas -i -r1 index people projects activity
