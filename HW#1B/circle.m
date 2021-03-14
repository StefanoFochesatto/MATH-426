
subplot(3,1,1)
hold on
theta = linspace(0, 2*pi, 1000);   
r = sqrt(2); 
x = 2 + r*cos(theta);
y = 1 + r*sin(theta);  
plot(x,y)  
axis equal     



rr = sqrt(3.5); 
xx = 2.5 + rr*cos(theta);
yy = rr*sin(theta);  
plot(xx,yy)  
axis equal 
grid
title('Two Circles Intersecting')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,1,2) 
hold on
theta = linspace(0, 2*pi, 1000);   
r = sqrt(2); 
x = 2 + r*cos(theta);
y = 1 + r*sin(theta);  
plot(x,y)  
axis equal     


rr = sqrt(3.5); 
xx = 2.5 + rr*cos(theta);
yy = rr*sin(theta);  
plot(xx,yy)  
axis equal 
grid
title('Leftmost Intersection')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,1,3)
hold on
theta = linspace(0, 2*pi, 1000);   
r = sqrt(2); 
x = 2 + r*cos(theta);
y = 1 + r*sin(theta);  
plot(x,y)  
axis equal     

rr = sqrt(3.5); 
xx = 2.5 + rr*cos(theta);
yy = rr*sin(theta);  
plot(xx,yy)  
axis equal 
title('Rightmost Intersection')
grid
hold off


