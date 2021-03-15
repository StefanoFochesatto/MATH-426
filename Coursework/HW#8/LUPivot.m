function [L,A, b] = LUPivot(A, b)
%This function takes an NxN matrix A and vector b and returns an LU
%factorization and permuted b. 

n = size(A,2);
L = zeros(n);


for k = 1:n %Initializes the diagonal of L
    L(k,k) = 1;
end

P = zeros(1,n);
for i = 1:n-1 % Iterates through columns of A
    
    %U pivot
     [M, I] = max(A(i,:));
     tmp = A(i,:);
     A(i,:) = A(I,:);
     A(I,:) = tmp;
     
     % Vector pivot
     tmp = b(i,:);
     b(i,:) = b(I,:);
     b(I,:) = tmp;
     
     
     %L Pivot
     tmp = L(i, 1:i-1);
     L(i, 1:i-1) = L(I, 1:i-1);
     L(I, 1:i-1) = tmp;
     
    
    for j = i+1:n % Iterates through Rows of A
      
        x = A(j,i)/A(i,i); %Calculates factor for Gauss Elim 
        
        L(j,i) = x; %Stores factor in L
        
        for k = 1:n % Iterates through current row and performs 
                    %Gaussian Elim step
            A(j,k) = A(j,k) - (A(i,k)*x);
        end
        
    end
    
end

