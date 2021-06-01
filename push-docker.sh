#!/bin/bash
. _env.sh
docker push $containertag
#. dk-get-python-version.sh
#echo $DKPYTHONVERSION
#docker build -t $containergroup:$DKPYTHONVERSION



