function [X] = Trap(f,a,b,n)
%This function takes a function f, an interval a,b
%and a number of intervals n and returns the approximate
%integral using the composite trapezoid rule

x = linspace(a,b,n+1);
X = 0;
for i = 1:n
    X = X + (x(i+1) - x(i))*((f(x(i+1)) + f(x(i)))/2);
end
end

