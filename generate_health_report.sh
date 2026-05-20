#!/bin/bash

REPORT_FILE="health-report-$(date +%Y%m%d-%H%M%S).md"

{
echo "# Tableau Server Health Report"
echo ""
echo "Generated at: $(date)"
echo ""
bash scripts/check_disk_usage.sh
bash scripts/check_cpu_memory.sh
bash scripts/check_tableau_services.sh
echo "## Notes"
echo "- Review disk capacity, memory usage, CPU load, and service status."
echo "- Document any abnormal findings and recommended actions."
} > "$REPORT_FILE"

echo "Health report generated: $REPORT_FILE"
