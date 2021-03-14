function x = NoPivotSolve(A, b)
%This funciton solves a linear system where A
%is NxN and LU factorization requires no pivoting

[L,U] = LUNoPivot(A);

y = lsolve(L,b);

x = usolve(U,y);