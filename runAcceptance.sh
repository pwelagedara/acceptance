#! /bin/bash

ENDPOINT=https://microservice-staging.cfapps.io/companies/1

#Give 5 seconds for the server to be available
sleep 5

OUTPUT="$(curl -X GET -Is $ENDPOINT | head -1)"
#OUTPUT="$(curl -Is $ENDPOINT | head -1)"
echo "${OUTPUT}"

if [[ ${OUTPUT} = *"200"* ]];then
    echo "Acceptance test passed"
else
    echo "Acceptance test failed"
    exit 1
fi
