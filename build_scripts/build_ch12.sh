START_DIR=${PWD%/*}

# change this directory path according to your configuration
LIBS_DIR=$START_DIR/env_scripts/libs

#Chapter 12
cd $START_DIR/Chapter12/caffe2
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DCMAKE_INSTALL_PREFIX=$LIBS_DIR ..
cmake --build . --target all

# Please use the following command line to run the caffe2 sample:
# LD_LIBRARY_PATH=$LIBS_DIR/sources/pytorch/third_party/ideep/mkl-dnn/external/mklml_lnx_2019.0.3.20190220/lib/ ./caffe2_load

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

cd $START_DIR/Chapter12/pytorch
if [ -d build ]; then
    echo "Existing build folder found"
    cd build/
    rm -r *
else
    mkdir build
    cd build/
fi
cmake -DCMAKE_INSTALL_PREFIX=$LIBS_DIR ..
cmake --build . --target all

# Please use the following command line to run the pytorch sample:
# LD_LIBRARY_PATH=$LIBS_DIR/sources/pytorch/third_party/ideep/mkl-dnn/external/mklml_lnx_2019.0.3.20190220/lib/ ./pytorch-save

