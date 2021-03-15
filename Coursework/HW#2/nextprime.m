function y = nextprime(x)
% The function nextprime(x) outputs the least prime number 
% that is greater than n.
y = x;
 if x<0
     y = 2;
     return
 end
while ~isprime(y)
    y = y+1;
    
end

