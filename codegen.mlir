module  {
  func @main() {
    %0 = toy.constant dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> :
tensor<2x3xf64>
    %1 = toy.transpose(%0 : tensor<2x3xf64>) to tensor<3x2xf64>
    %2 = toy.mul %1, %1 : tensor<3x2xf64>
    %3 = toy.transpose(%2 : tensor<3x2xf64>) to tensor<2x3xf64>
    toy.print %3 : tensor<2x3xf64>
    toy.return
  }
}