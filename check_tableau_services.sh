#!/bin/bash

echo "## Tableau Server Services Check"
echo ""

if command -v tsm >/dev/null 2>&1; then
    tsm status -v
else
    echo "TSM command not found. Run this script on a Tableau Server node with TSM installed."
fi

echo ""
