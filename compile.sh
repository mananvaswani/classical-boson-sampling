#!/bin/bash

# You may need to change the `g++-8` to `g++`depending on your version of g++
# If the armadillo installation does not appear in your path, manually set it by replacing the `-larmadillo` flag
# with `-I /path/on/your/computer/armadillo-9.200.8/include -DARMA_DONT_USE_WRAPPER -lblas -llapack`
g++-8 bosonSampling.cpp cxPermMinors.cpp cxPermMinorsNThreads.cpp randomUnitary.cpp -o a.out -std=c++11 -larmadillo -fopenmp -Ofast -funroll-loops -pipe -march=native

# Make sure you change the path to the armadillo library when using the Intel compiler
#icpc bosonSampling.cpp cxPermMinors.cpp cxPermMinorsNThreads.cpp randomUnitary.cpp -o a.out -std=c++11 -I ~/Downloads/armadillo-9.200.8/include -DARMA_DONT_USE_WRAPPER -lblas -llapack -qopenmp -O3 -xHOST


## BC4 compile

#g++ bosonSampling.cpp cxPermMinors.cpp cxPermMinorsNThreads.cpp randomUnitary.cpp -o a.out -std=c++11 -I /mnt/storage/home/mv15872/arma/include -DARMA_DONT_USE_WRAPPER -lblas -llapack -Ofast -funroll-loops -march=native -fopenmp -pipe

#icc bosonSampling.cpp cxPermMinors.cpp cxPermMinorsNThreads.cpp randomUnitary.cpp -o a.out -std=c++11 -I /mnt/storage/home/mv15872/arma/include -DARMA_DONT_USE_WRAPPER -lblas -llapack -O3 -xHOST -qopenmp
