#!/bin/sh -ex

TARG=/anfs/www/html/projects/ocamllabs
git pull http://github.com/ocamllabs/www
rsync -av pages/ ${TARG}/
cd ${TARG}
ucampas -r1 *-b.html projects local
chmod -R g+w ${TARG}/*
