function y = lpsolve(L,P, b)
% Given a lower triangular matrix L with unit diagonal
% and a vector b,    
% this routine solves Ly = b and returns the solution y.



n = size(b,2);      % Determine size of b.
bp = zeros(n,1);

for i = 1:n         % Compute permutatino of 
    pb(i) = b(P(i));
end




for i=1:n    % Loop over equations.  
    y(i) = pb(i);   % Solve for y(i) using  
    
    for j=1:i-1      % previously computed y(j),                              
                      % j=1, . . . ,i-1.             
        y(i) = y(i) - L(i,j)*y(j);  
    end
end                % j=1, . . . ,i-1.
