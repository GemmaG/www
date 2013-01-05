#!/bin/sh -ex

TARG=/anfs/www/html/projects/ocamllabs
UCAMPAS=/anfs/www/tools/bin/ucampas
git pull http://github.com/ocamllabs/www
cd pages
env PATH=../ucampas:$PATH ucampas -i -r1 index people projects activity
cd ..
rsync -av pages/ ${TARG}/
cd ${TARG}
#${UCAMPAS} -r1 *-b.html projects local
chgrp -R ocamllabs ${TARG}/*
chmod -R g+w ${TARG}/*
