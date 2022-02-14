#!/bin/bash

sleep 10
status=$(curl -s -o /dev/null -w "%{http_code}" localhost:37831)
if [[ $status -eq 200 ]]
then
	echo "Working Successfully"
else
	echo "Not working, some error occured"
fi

