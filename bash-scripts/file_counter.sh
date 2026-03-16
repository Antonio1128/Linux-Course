#!/bin/bash
echo "Enter Direcotry:"
read dir
cd $dir
echo ""
echo  "Files in directory:"
ls
echo ""
echo "Total files:"
ls | wc -l


