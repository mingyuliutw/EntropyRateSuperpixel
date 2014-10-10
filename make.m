% make erc matlab wrapper
% Ming-Yu Liu 04/12/2010
clear all;
clc;
restoredefaultpath;

mex -v -c ERS/MERCCInput.cpp
mex -v -c ERS/MERCOutput.cpp
mex -v -c ERS/MERCDisjointSet.cpp
mex -v -c ERS/MERCFunctions.cpp
mex -v -c ERS/MERCLazyGreedy.cpp
mex ERS/mex_ers.cpp MERCCInput.o* MERCOutput.o* MERCDisjointSet.o* MERCFunctions.o* MERCLazyGreedy.o*

delete *.o*

