#!/usr/bin/env bash
# shellcheck disble=SC2059

# Version:0.1
# Author: Nick Brady
# License: GPLv3
# Github Repository: https://github.com/swag69420/linux-script
set -e pipefail

# Build Static
echo "Building Docs"
docker run \ 
--workdir=/docs \
    -v "$(pwd)":/docs squidfunk/mkdocs-material:7.1.9 \
    build -v -s --config-file /docs/mkdocs.yml
