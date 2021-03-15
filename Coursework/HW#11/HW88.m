function [I] = HW8_8(x,r)
%This function takes in a linspace, x and a vector r,
%and returns a vector of valus in x that surround r, ie
%x(i)<r(j)<x(i+1)




n = length(x);
m = length(r);
I = [];
for i = 1:m
    for j = 1:n
        if (x(j)>= r(i))
            I = [I ; x(j-1);x(j)];
            break
        end
    end
end


end

