#!/usr/bin/env bash
set -x
set -e

DEV_DIR=$(pwd)

if [ -d libs ]; then
    echo "Existing libs folder found."
else
    echo "No existing libs folder found. Creating."
    mkdir libs
    mkdir libs/sources
fi

# Eigen
. ./install_lib.sh https://github.com/eigenteam/eigen-git-mirror 36b95962756c1fce8e29b1f8bc45967f30773c00

# DLib
. ./install_lib.sh https://github.com/davisking/dlib.git daefd41b9fff274ca9e70e9b5f65d25a9799ca96

# HighFive
. ./install_lib.sh https://github.com/BlueBrain/HighFive dfc06537fdb20f5e572c20bc6febd22dd5d08246

# PlotCpp
. ./checkout_lib.sh https://github.com/Kolkir/plotcpp c86bd4f5d9029986f0d5f368450d79f0dd32c7e4

# fast-cpp-csv-parser
. ./checkout_lib.sh https://github.com/ben-strasser/fast-cpp-csv-parser 758f5665705a38da55322511d5b22fe2679918fe

# return back
cd $DEV_DIR