#!/bin/bash
# Author: Bolat Arsen
# Script: Bolat_Arsen_system_report.sh
# Purpose: Display and save system information to a personal log file.

STUDENT="Bolat Arsen"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/../logs/Bolat_Arsen_system_report.log"

{
    echo "=================================================="
    echo "              SYSTEM REPORT"
    echo "=================================================="
    echo "Student's full name : $STUDENT"
    echo "Current date/time   : $(date '+%Y-%m-%d %H:%M:%S')"
    echo "Current username    : $(whoami)"
    echo "Operating system    : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
    echo "Kernel version      : $(uname -r) ($(uname -m))"
    echo "--------------------------------------------------"
    echo "CPU information:"
    lscpu | grep -E 'Architecture|Model name|^CPU\(s\)'
    echo "--------------------------------------------------"
    echo "Memory information:"
    free -h
    echo "--------------------------------------------------"
    echo "Disk usage:"
    df -h
    echo "--------------------------------------------------"
    echo "Available disk space:"
    df -h --output=source,size,avail | grep -v tmpfs
    echo "=================================================="
    echo ""
} | tee -a "$LOG_FILE"
