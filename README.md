# classical-boson-sampling
The code repository to accompany my final year thesis titled: 'A multi-core CPU implementation of the classical Boson Sampling algorithm'

Prerequisites:
You must have both Armadillo (http://arma.sourceforge.net/) and and OpenMP installed in order to compile and run the code.
In addition, you must have either the g++ compiler or/and the Intel compiler(https://software.intel.com/en-us/c-compilers) installed.
The repository can be cloned onto Blue Crystal as well.

Usage:
1. Compile the code <br>
    -Navigate to the repository from within your terminal window <br>
    -Use the command `./compile.sh` to compile the code, but first: <br>
        -Check the compile.sh file and uncomment the appropriate line <br>
        -You may need to specify the path (instructions commented in `compile.sh`) <br>
        -Change any flags as desired

2. Run the code <br>
    -The syntax to run the code from the command line is as follows: <br>
    `./a.out <input size> <number of samples> <optional flags>` <br>
    -Available flags are (must be used in correct order): <br>
        - `-parallel <number of threads to use>` <br>
        - `-saveData <filename>` : saves timing data to a .csv file

    -Examples are: <br>
        `./a.out 25 1` <br>
        `./a.out 30 2 -parallel 4` <br>
        `./a.out 20 10 -saveData test` <br>
        `./a.out 27 5 -parallel 3 -saveData test` <br>
