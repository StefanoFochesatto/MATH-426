function X = buildseq(N)
% The buildseq(N) function returns an array with the first N values 
% of the recurrence relation  x_i+1=(0.5*x_i) + 1. 
x=0;
X = [];
for i=1:N
    x=(0.5*x) +1;
    X(i)= x;
end
end