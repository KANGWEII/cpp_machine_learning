START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=$START_DIR/env_scripts/libs


#Chapter 2
cd $START_DIR/Chapter02/csv/cpp
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DCSV_LIB_PATH=$LIBS_DIR/sources/fast-cpp-csv-parser/ -DEIGEN_LIB_PATH=$LIBS_DIR/include/eigen3/ ..
cmake --build . --target all

cd $START_DIR/Chapter02/csv/dlib
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

cd $START_DIR/Chapter02/hdf5/cpp
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DHIGHFIVE_LIB_PATH=$LIBS_DIR/include/ -DJSON_LIB_PATH=$LIBS_DIR/include/rapidjson/ ..
cmake --build . --target all

cd $START_DIR/Chapter02/json/cpp
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DJSON_LIB_PATH=$LIBS_DIR/include/ -DEIGEN_LIB_PATH=$LIBS_DIR/include/eigen3/ ..
cmake --build . --target all

cd $START_DIR/Chapter02/img/dlib/
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

cd $START_DIR/Chapter02/img/opencv/
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake ..
cmake --build . --target all

