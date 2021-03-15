function [X] = Simpsons(f,a,b,n)
%This function takes a function f, an interval a,b
%and a number of intervals n and returns the approximate
%integral using the composite Simpsons rule

x = linspace(a,b,n+1);
X = 0;
for i = 1:n
    X = X + ((x(i+1) - x(i))/6) * 
    (f(x(i)) + 4*f(((x(i+1) + x(i))/2)) + f(x(i+1)));                
end
end

