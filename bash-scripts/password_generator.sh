#!/bin/bash

tr -dc A-Za-z0-9 </dev/random | head -c 16
echo
