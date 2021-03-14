function [L,A] = LUNoPivot(A)
%This funciton takes an NxN matrix A and returns an LU factorization
% without pivoting the rows  
n = size(A,2);
L = zeros(n);


for k = 1:n %Initializes the diagonal of L
    L(k,k) = 1;
end


for i = 1:n-1 % Iterates through columns of A
 
    if A(i,i) == 0
     error('Cannot LU factorize without pivoting')
    end
     
    for j = i+1:n % Iterates through Rows of A
        
        x = A(j,i)/A(i,i); %Calculates factor for Gauss Elim 
        
        L(j,i) = x; %Stores factor in L
        
        for k = 1:n % Iterates through current row and performs Gaussian Elim step
            A(j,k) = A(j,k) - (A(i,k)*x);
        end
        
    end
    
end

