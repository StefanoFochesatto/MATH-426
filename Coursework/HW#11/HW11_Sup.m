function [hist] = HW11_Sup(f,n)
%This function takes a function f and 
% a natural number n and return the error
%in the polynomial interpolant as we add more sample points
    xx = linspace(0,2,10000);
    hist = [];

    for i = 1:n
        
        x = linspace(0,2,i);
        y = f(x);
        polyinter = polyfit(x,y,i);
        
        error = abs(f(xx)-polyval(polyinter,xx));
        hist = [hist, max(error)];

    end
    
end

