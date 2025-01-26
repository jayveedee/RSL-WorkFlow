#!/usr/bin/env bash

BLUE='\033[0;34m'
NC='\033[0m'

files=$(find rsl/ -type f -name "*.rsl" ! -name "*rsl.el")

for file in $files; do
    dir=$(dirname "$file")
    base=$(basename "$file")

    pushd "$dir" > /dev/null

    echo -e "${BLUE}Type Checking and Compiling '$base' to SML with rsltc -m ${NC}"
    rsltc -m "$base"   

    popd > /dev/null
done