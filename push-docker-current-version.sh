#!/bin/bash
. _env.sh

#DKPYTHONVERSION=$(. dk-get-python-version.sh)
. dk-get-python-version.sh

echo "puishing $DKPYTHONVERSION"
sleep 1
containertag=$(echo "$containergroup:$DKPYTHONVERSION")
docker build -t $containertag .
docker push $containertag && \
	echo "Pushed : docker pull $containertag"

