#!/bin/bash

echo "Enter word:"
read word
echo "Searching for:"
echo $word
grep -r $word
