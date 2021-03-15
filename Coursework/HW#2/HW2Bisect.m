function [root,history] = HW2Bisect(a,b,f,d)
%initilizing history vectors
historya = [];
historyb = [];


fb = f(b);
fa = f(a);

%Checks if interval bounds contain root
if fa==0 
    root = a;
    return
end


if fb==0 
    root = b;
    return
end

% Syntax check for bisection algorithm
if sign(fa) == sign(fb)
    disp('Error: f(a) and f(b) have same sign.')  
    return
end



% Bisection algorithm
count = 1;
while abs(a-b)> 2*d
    %iterate until interval width is <= 2xDelta
    c = (a+b)/2;
    fc = f(c);
    %assigning history values
    historya (count) = a;
    historyb (count) = b;
        if fc == 0
            root = c;
            break
        end
     if sign(fc) == sign(fa)
         a = c;
         fa = fc;
         count = count + 1;
         %assigning history values
         historya (count) = a;
         historyb (count) = b;
     else
         b = c;
         fb = fc;
         count = count + 1;
         %assigning history values
         historya (count) = a;
         historyb (count) = b;
     end
%disp(c);     
 
 %Putting them together in one table
 history = [historya; historyb];
 %Flipping table for the correct format
 history = history';
     
end
root = (a+b)/2;

end

