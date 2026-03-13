#!/bin/bash

LOG="/var/log/syslog"
echo "=== Error Log Report ==="
echo ""
grep -i $LOG | tail -n 10

