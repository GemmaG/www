#!/bin/sh -ex

TARG=/anfs/www/html/projects/ocamllabs
UCAMPAS=/anfs/www/tools/bin/ucampas
git pull http://github.com/ocamllabs/www
rsync -av pages/ ${TARG}/
cd ${TARG}
#${UCAMPAS} -r1 *-b.html projects local
chgrp -R ocamllabs ${TARG}/*
chmod -R g+w ${TARG}/*
