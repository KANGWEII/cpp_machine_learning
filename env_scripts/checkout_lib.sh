#!/usr/bin/env bash
set -x
set -e

START_DIR=$(pwd)
REPOSITORY=$1
COMMIT_HASH=$2

cd $START_DIR/libs/sources
if [ -d "$(basename "$REPOSITORY" .git)" ]; then
    echo "Repository exist"
else
    git clone $REPOSITORY
    cd "$(basename "$REPOSITORY" .git)"
    git checkout $COMMIT_HASH
    git submodule update --init --recursive
fi
cd $START_DIR
