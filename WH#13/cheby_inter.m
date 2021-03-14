function [inter] = cheby_inter(f,n)
%This function takes in a function f and 
%the desired order for the approximating 
%polynomial interpolant n. Returns the integral 
%of the polynomial interpolant from -1,1

x = [];
    for i = 0:n
        x = [x, cos(pi+((pi*i)/n))];
    end
p = polyfit(x, f(x),n);
i = polyint(p);
inter = diff(polyval(i,[-1 1]));
end
