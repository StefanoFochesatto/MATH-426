function [N] = vandercond(n)

N = [];
    for j = 1:n
        x = [0];
            for i = 1:j
            x = [x i/j];
            end
        V = vander(x');
        N = [N, cond(V,2)];
    end
end

