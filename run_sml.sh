#!/usr/bin/env bash

BLUE='\033[0;34m'
NC='\033[0m'

files=$(find rsl/ -type f -name "*.sml" ! -name "*_.sml")

for file in $files; do
    dir=$(dirname "$file")
    base=$(basename "$file")

    pushd "$dir" > /dev/null
    
    echo -e "${BLUE}Running '$base' with sml to test${NC}"
    sml < "$base" | sed -En '
        # Match lines ending with "[<some text and numbers>] true" and color green
        /\[.*\][[:space:]]+true$/ s/(.*)/\x1b[32m\1\x1b[0m/p;

        # Match lines ending with "[<some text and numbers>] false" and color red
        /\[.*\][[:space:]]+false$/ s/(.*)/\x1b[31m\1\x1b[0m/p;
    '

    popd > /dev/null
done