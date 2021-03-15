%  Plot function over large interval.

f = @(x) (4*x.*sin(x) - 3)./ (2 + x.^2);

subplot(2,1,1)
x = [0:.01:4];
plot(x,f(x))  
title('Plot of  f(x) = (4x sin(x) - 3)/(2 + x^2)')
grid

%  Zoom in on smaller interval about one root. .933
subplot(2,1,2)
xx = [.90:.001:.94];
plot(xx,f(xx))  
axis([.90 .94 -0.02 0.02])
title('Zoomed View of Leftmost Root')
grid
