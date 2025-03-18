START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=$START_DIR/env_scripts/libs

#Chapter 12
cd $START_DIR/Chapter12/dlib
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DDLIB_PATH=$LIBS_DIR ..
cmake --build . --target all