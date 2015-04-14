#!/bin/bash

# Needs to be run with cwd a git repo

TOPLEVEL=$(git rev-parse --show-toplevel)
REPO_NAME=$(basename $TOPLEVEL)

pull_master() {
    git fetch -p >> /dev/null 2>&1
    git checkout master >> /dev/null 2>&1
}

LAST_TAG=$(git describe --tags --abbrev=0)
DESC_TAG=$(git describe --tags)
