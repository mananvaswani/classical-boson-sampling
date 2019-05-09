#include "header.h"

arma::cx_mat randomUnitary(int m) {

    arma::mat A_real(m, m, arma::fill::randn);
    arma::mat A_imag(m, m, arma::fill::randn);

    arma::cx_mat A(A_real, A_imag);

    arma::cx_mat Q, R;
    arma::qr(Q, R, A);

    arma::mat R_diag = arma::sign(arma::real(arma::diagmat(R)));

    A = Q * R_diag;

    return A;
}

// int main(int argc, char *argv[]) {
//     arma::cx_mat A;
//     A = randomUnitary(3);
//     A.print("A:");
//
//     // // Check if hermitian
//     // arma:: cx_mat check = A * A.t();
//     return 0;
// }
