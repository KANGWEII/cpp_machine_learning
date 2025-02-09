# CPP Machine Learning

## Description
`CPP Machine Learning` is a C++ repository showcasing the implementation of supervised and unsupervised machine learning algorithms using C++ libraries. The code is sourced from the book *Hands-On Machine Learning with C++*, available on [GitHub](https://github.com/PacktPublishing/Hands-On-Machine-Learning-with-CPP.git), with minor modifications and adjustments to accommodate my development environment. If you're passionate about exploring machine learning techniques and building algorithms in C++, I recommend checking out the book for a deeper understanding and hands-on experience. 

## Usage
### Cloning the Project
```sh
$ git clone https://github.com/KANGWEII/cpp_machine_learning.git
```

### Install Required Tools
All necessary tools are listed in the [install_env.sh](./env_scripts/install_env.sh) file. To install, simply run the following commands:
```sh
$ cd cpp_machine_learning
$ ./env_scripts/install_env.sh
```

### Building the Project
Each chapter includes a dedicated bash script for building the code, located in the [build_scripts](./build_scripts/) folder. To build the code for a specific chapter, simply run the corresponding script for that chapter.
```sh
$ ./build_scripts/build_ch01.sh
```

### Running Example
Once you've built the code for a specific chapter, you can execute the compiled examples from the `/build` directory. For instance, to run the `dlib_samples` example from Chapter01, launch the corresponding executable.
```sh
$ ./Chapter01/dlib_sample/build/linalg-dlib
$ ./Chapter01/dlib_sample/build/linreg-dlib
```