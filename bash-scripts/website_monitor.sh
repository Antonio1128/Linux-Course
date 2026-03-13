#!/bin/bash
SITE="google.com"
ping -c 1 $SITE > /dev/null
if [ $? -eq 0 ]; then
echo  "$Site is online!"
else
echo "$Site is down!"
fi
