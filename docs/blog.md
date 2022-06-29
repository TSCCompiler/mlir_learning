
Ops.td append code <br>
def ConvOp : Toy_Op<"conv"> {
let summary = "convlution operation";

    let arguments = (ins F64Tensor:$input, F64Tensor:$wgt);

    let results = (outs F64Tensor);

    let builders = [
            OpBuilder<(ins "Value":$input, "Value":$wgt)>
            ];
}


MLIRGen.cpp

if (callee == "conv")
{
if (call.getArgs().size()!=2){
emitError(location, "MLIR codegen encountered an error : toy.conv "
"does not accept single or zero arguments");
return nullptr;
}
return builder.create<ConvOp>(location, operands[0], operands[1]);
}

FAILED: bin/toyc-ch2
: && /usr/bin/clang++-8 -nostdlib++ -isystem /usr/lib/llvm-8/include/c++/v1 -lc++ -fPIC -lpthread -Wunused-command-line-argument -fvisibility-inlines-hidden -Wall -Wextra -Wno-unused-parameter -Wwrite-strings -Wcast-qual -Wmissing-field-initializers -Wno-noexcept-type -Wnon-virtual-dtor -fdiagnostics-color -g -lc++ -lpthread    -Wl,-rpath-link,/home/share/data/workspace/project/mlir_standalone/cmake-build-debug/lib toy/Ch2/CMakeFiles/toyc-ch2.dir/toyc.cpp.o toy/Ch2/CMakeFiles/toyc-ch2.dir/parser/AST.cpp.o toy/Ch2/CMakeFiles/toyc-ch2.dir/mlir/MLIRGen.cpp.o toy/Ch2/CMakeFiles/toyc-ch2.dir/mlir/Dialect.cpp.o -o bin/toyc-ch2  -Wl,-rpath,"\$ORIGIN/../lib:/home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib"  -lpthread  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRTransforms.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRCopyOpInterface.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRVector.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRAffineUtils.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRTransformUtils.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRLoopAnalysis.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRPresburger.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRRewrite.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRPDLToPDLInterp.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRPass.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRAnalysis.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRDataLayoutInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRLinalg.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRParser.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRAffine.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRMath.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRSCF.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRLoopLikeInterface.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRMemRef.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRTensor.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRDialectUtils.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRViewLikeInterface.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRDialect.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRMemRefUtils.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libLLVMCore.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRStandard.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRCallInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRControlFlowInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRCastInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRPDLInterp.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRPDL.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRSideEffectInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRInferTypeOpInterface.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRVectorInterfaces.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRIR.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libMLIRSupport.so.13  /home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib/libLLVMSupport.so.13  -lpthread  -Wl,-rpath-link,/home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/lib && :
toy/Ch2/CMakeFiles/toyc-ch2.dir/mlir/MLIRGen.cpp.o：在函数‘mlir::toy::ConvOp mlir::OpBuilder::create<mlir::toy::ConvOp, mlir::Value&, mlir::Value&>(mlir::Location, mlir::Value&, mlir::Value&)’中：
/home/share/data/workspace/project/circt/llvm/llvm/cmake-build-debug_mlir/INSTALL_mlir_v13/include/mlir/IR/Builders.h:402：对‘mlir::toy::ConvOp::build(mlir::OpBuilder&, mlir::OperationState&, mlir::Value, mlir::Value)’未定义的引用
clang: error: linker command failed with exit code 1 (use -v to see invocation)
ninja: build stopped: subcommand failed.

Dialect.cpp

//===----------------------------------------------------------------------===//
// ConvOp
void ConvOp::build(mlir::OpBuilder &builder, mlir::OperationState &state,
mlir::Value input, mlir::Value wgt) {
state.addTypes(UnrankedTensorType::get(builder.getF64Type()));
state.addOperands({input, wgt});
}


%6 = "toy.conv"(%5, %4) : (tensor<*xf64>, tensor<*xf64>) -> tensor<*xf64>