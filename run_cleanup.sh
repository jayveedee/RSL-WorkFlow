#!/usr/bin/env bash

find rsl/ -type f \( -name "*.sml" -o -name "*_.sml" \) -exec sh -c 'echo "Deleting: $0" && rm -f "$0"' {} \;
find rsl/ -type f \( -name "*.rsl.el" \) -exec sh -c 'echo "Deleting: $0" && rm -f "$0"' {} \;
