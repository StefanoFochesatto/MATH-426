function x = PivotSolve(A, b)
%This funciton solves a linear system where A
%is NxN

[L,U,z] = LUPivot(A, b);

y = lsolve(L,z);

x = usolve(U,y);