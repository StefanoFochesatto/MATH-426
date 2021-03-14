function [X] = diff_2(f, h, x)
% This function takes a function f,
% a vector of values for h, an x value of 
% interest and returns an approximation for the 
% second derivative at x.

X = [];
for i = 1:length(h)
    X(i) = ((f(x + h(i)) - 2.*f(x) + f(x - h(i)))./h(i).^2);
end
    
end

