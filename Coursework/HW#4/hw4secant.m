function [r, hist] = hw4secant(f,x0,x1,ftol,xtol,Nmax)
% Takes a function(f), an f(x) tolerance, an x
% tolerance, max number of iterations, two initial root guess and
% returns an approximation, iteration history, and a message describing
% Secant method termination. 


format longE
%Initializing variables
hist  = zeros;
count = 1;

if x0 == x1
    error('initial gueses are the same')
end
x = x0;
%Assigning first value
hist(1) = x; 
    
x = x1;
%Assigning second value
hist = [hist; x];
   

%Iteration Step
for i = 2:(Nmax - 1)        %initial guess is counted in Nmax            
    mk = (f(hist(i)) - f(hist(i - 1)))/(hist(i) - hist(i - 1));
    x = x - f(x)/mk ; 
    hist = [hist; x];
        
    %Checking tolerances
        
        if abs(f(x)) <= ftol
            disp('Inside of f tolerance')
         break
        end
        
        if i > 1        % hist must have at least two values to check xtol
            if abs(x - hist(i - 1)) <= xtol
                disp('Inside of x tolerance')
                break
            end
        end
        
        %termination message for Nmax iterations
        if i == (Nmax - 1)
            disp('Terminated after Nmax iterations')
        end
        
end

r = x;

end
