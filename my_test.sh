#!/bin/bash

IP=$1
PORT=$2

echo -e "Start of tests phase:\n"

echo "Test1: Check web page is served OK"
curl -s -m 10 "${IP}:${PORT}" > /dev/null
retVal=$?

if [ $retVal -ne 0 ]; then
	echo "Error in Test1. Return value is: ${retVal}"
	exit $retVal
fi
echo -e "Test1 passed successfuly\n"


echo "Test2: Check that date is returned"


