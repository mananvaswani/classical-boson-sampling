# classical-boson-sampling
The code repository to accompany my final year thesis titled: 'A multi-core CPU implementation of the classical Boson Sampling algorithm'

Prerequisites:
You must have both Armadillo (http://arma.sourceforge.net/) and and OpenMP installed in order to compile and run the code.
In addition, you must have either the g++ compiler or/and the Intel compiler(https://software.intel.com/en-us/c-compilers) installed.
The repository can be cloned onto Blue Crystal as well.

Usage:
1. Compile the code
    -Navigate to the repository from within your terminal window
    -Use the command `./compile.sh` to compile the code, but first:
        -Check the compile.sh file and uncomment the appropriate line
        -You may need to specify the path (instructions commented in `compile.sh`)
        -Change any flags as desired

2. Run the code
    -The syntax to run the code from the command line is as follows:
    `./a.out <input size> <number of samples> <optional flags>`
    -Available flags are (must be used in correct order):
        - `-parallel <number of threads to use>`
        - `-saveData <filename>` : saves timing data to a .csv file

    -Examples are:
        `./a.out 25 1`
        `./a.out 30 2 -parallel 4`
        `./a.out 20 10 -saveData test`
        `./a.out 27 5 -parallel 3 -saveData test`
