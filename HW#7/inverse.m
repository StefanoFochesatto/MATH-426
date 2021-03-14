function [B] = inverse(A)

n = size(A,2); %Grabs dimension
B = zeros(n); %Initilises B
[L,U] = LUPivot(A); %Calls LU Factor


for j = 1:n
    
    %Makes I_n vector
    i = zeros(n, 1); 
    i(j) = 1;
    
    %Calls U and L Solve to get column of A^{-1}
    y = lsolve(L,i);
    x = usolve(U,y);
    %Saves each column
    B(:, j) = x;
    
    
end



end

