function [r, hist] = hw3newton(f,fp,x1,ftol,xtol,Nmax)
% Takes a function(f), it's derivative(fp), an f(x) tolerance, an x
% tolerance, max number of iterations, and an initial root guess and
% returns an approximation, iteration history, and a message describing
% Newton's Method termination. 


format long e
%Initializing variables
hist  = zeros;
count = 1;
x = x1;
%Assigning first value
hist(1) = x; 
    
   

%Iteration Step
for i = 1:(Nmax - 1)        %initial guess is counted in Nmax            

    if fp(x)==0   %% if fprime is 0, abort.
        error('fprime is 0')  %% the error function prints
                              %% message and exits
    end
        
    x = x - f(x)/fp(x) ; 
    hist = [hist; x];
        
    %Checking tolerances
        
        if abs(f(x)) <= ftol
            disp('Inside of f tolerance')
         break
        end
        
        if i > 1  % hist must have at least two values to check xtol
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