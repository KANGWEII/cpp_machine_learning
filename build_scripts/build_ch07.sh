START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=$START_DIR/env_scripts/libs

#Chapter 7
cd $START_DIR/Chapter07/dlib
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DDLIB_PATH=$LIBS_DIR -DPLOTCPP_PATH=$LIBS_DIR/sources/plotcpp/ ..
cmake --build . --target all