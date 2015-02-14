#!/bin/bash
set -e

if [ -z "$ADMIN_USER" -o -z "$ADMIN_PASS" ]; then
    echo >&2 'error: ADMIN_USER and/or ADMIN_PASS is not set'
    echo >&2 '  Did you forget to add -e ADMIN_USER=<name> ADMIN_PASS=<pass>'
    exit 1
fi

echo "Running mojibake setup..."
python3.4 /opt/mojibake/apps/mojibake/setup.py "$ADMIN_USER" "$ADMIN_PASS"
