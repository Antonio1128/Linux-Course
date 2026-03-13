
echo  " === SYSTEM INFO ==="
echo "user: $(whoami)"
echo "date: $(date)"
echo "current dirctory: $(pwd)"

echo" "
echo "=== System ==="
unname  -a

echo" "
echo "=== Disk Usage ==="
df -h

echo ""
echo "=== Memory ==="
free  -h

echo  "=== Top Processes==="
ps aux  --sort=-%mem |head 
