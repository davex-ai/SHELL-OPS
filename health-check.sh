#!/bin/bash
# health-check.sh – Basic system monitor

echo "=== System Health Report ==="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime)"
echo "Disk Usage:"
df -h | grep -v tmpfs
echo "Memory:"
free -h