#!/bin/bash
echo "===Repository==="
git remote -v

echo "" 

echo "===Branches==="
git branch -a 
 
echo ""
echo "===Last 5 commits==="
git log --oneline -5
