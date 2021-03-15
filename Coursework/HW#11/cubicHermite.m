function px = cubicHermite(sx,sy,sdy,xl)
% This function takes sx sample points, sy the value
% at those sample points, sdy the value of the derivative
% at those sample points, and a linespace xl and returns 
% the value of the piecewise cubicHermite Interpolation 

%initilizing piecewise linespace
xx = [];

%Intitilizing return vector
px = [];

%Iterating through sample points
for i = 2:length(sx)

    %Creating trucated linspace xx
    for j = 1:length(xl)
        if (sx(i-1)<= xl(j) && sx(i) > xl(j))
            xx =[xx xl(j)]; 
            if (sx(length(sx)) == xl(j))
                xx =[xx xl(j)];
            end
            if (sx(1) == xl(j))
                xx =[xx xl(j)];
            end
        end
    end
    
    %Caluculating P(x) on xx linspace with proper sample interval
    h = sx(i) - sx(i-1);
    AA = (3/h^2)*(sdy(i-1)+sdy(i)) + (6/h^3)*(sy(i-1)-sy(i));
   
    px_i = (-sdy(i-1)/h).*((((xx - sx(i)).^2)./2) - (h^2/2)) + 
    ((sdy(i)/h).*(((xx - sx(i-1)).^2)./2)) + 
    AA.*((xx - sx(i-1)).^2).*(((xx - sx(i-1))./3) - h/2) + sy(i-1);
    
    %Storing P(x)
    px = [px px_i];
    
%Clearing truncated linspace
xx = [];
end

end
