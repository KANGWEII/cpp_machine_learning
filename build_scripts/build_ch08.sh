START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=$START_DIR/env_scripts/libs

#Chapter 8
cd $START_DIR/Chapter08/eigen
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DEIGEN_PATH=$LIBS_DIR/include/eigen3 ..
cmake --build . --target all

cd $START_DIR/Chapter08/mlpack
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DMLPACK_PATH=$LIBS_DIR ..
cmake --build . --target all

