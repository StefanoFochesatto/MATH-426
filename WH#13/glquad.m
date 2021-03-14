function [Q] = glquad(f,a,b,n)
% This fuction takes a function f, an interval [a,b]
% and a number of intervals n and returns the composite
% gauss-legendre integration. 

% Pulling the roots for a 5th degree legendre polynomial
syms x
roots = vpasolve(legendreP(5,x) == 0);

% intitilizing the endpoints of each sub-interval
ep = linspace(a,b,n+1); 
%Casting the roots as floats instead of a symbolic variable
roots = cast(roots,'like',ep);

% Finding the normalized roots on each sub interval. 
% Each column of X is the set of roots on the ith sub-interval
X = [];
for i = 1:n
    legSub = roots*((ep(i+1) - ep(i))/2) + ((ep(i+1) + ep(i)))/2; 
    X = [X legSub;];
end


% Performing guassian quadrature on each subinterval. 
Q = 0;
for i = 1:n
    x = X(:,i)';

    B = [x.^0; x; x.^2; x.^3; x.^4];
    bb = [];
    A = [];

    for j = 1:5
        bb(j) = ((ep(i+1))^j - (ep(i))^j)/j;
    end

    A = B\bb';
    Q = Q + dot(A,f(x));
end


end

