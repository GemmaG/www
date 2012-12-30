#!/bin/sh
cd pages && env PATH=../ucampas:$PATH ucampas -i -r1 index people projects activity
