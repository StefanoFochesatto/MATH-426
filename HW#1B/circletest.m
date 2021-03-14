hold on
theta1 = [.67:.001:.70];   
r = sqrt(2); 
x = 2 + r*cos(theta1);
y = 1 + r*sin(theta1);  
plot(x,y)  
axis equal     


rr = sqrt(3.5); 
xx = 2.5 + rr*cos(theta1);
yy = rr*sin(theta1);  
plot(xx,yy)  
axis equal 
grid
hold off
