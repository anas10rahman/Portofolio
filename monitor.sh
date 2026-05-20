#!/bin/bash

echo "# Linux Server Monitoring Report"
echo "Generated at: $(date)"
echo ""

echo "## Hostname"
hostname
echo ""

echo "## Uptime"
uptime
echo ""

echo "## Disk Usage"
df -h
echo ""

echo "## Memory Usage"
free -h
echo ""

echo "## CPU Information"
top -bn1 | head -n 10
echo ""

echo "## Top Processes by Memory"
ps aux --sort=-%mem | head -n 10
echo ""
