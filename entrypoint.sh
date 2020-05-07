#!/bin/sh -l

echo "Running test on Assertible"
export SHA=`git rev-parse HEAD`
curl -u $3 "https://assertible.com/deployments" -d'{ "service": "$2", "environment": "$3", "version": "$5", "ref" : "'"${SHA}"'", "github": true}'
echo "::set-output name=json::started"
