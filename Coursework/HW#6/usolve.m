function X = usolve(U, b)
 %This funciton takes in an upper triangular matrix,
 %and an appropriate resultant vector and returns a
 %solution, by back substitution. 

n = size(b,2); % Pulling dimensions of U and b

X = [];%initilizing soution vector


X(1) = b(n)/ U(n,n); % Solving for nth term in the solution vector


% This nested for loop iterates through 
%the upper triangular matrix. Pulls
% the values from the matric not on
% the diagonal and calculated the
% solution vector. 

for i = n-1:-1:1 % n-1 to 1 rows to iterate through
   a = []; % Initilizing vector to pull terms from the ith row of U
   for j = i+1:n % Iterating through ith row of U and pulling non zero terms
       a = [a,U(i,j)];
   end
    
X = [(b(i)-(dot(X,a)))/U(i,i), X]; %Calculating X(i)
end






