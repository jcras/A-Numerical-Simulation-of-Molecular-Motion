function [ r21, theta21, f21, a1x, a1y ] = distance( x1,y1,x2,y2 )

m = 1;
%calculate distance between two particles
r21 = sqrt((x2-x1)^2 + (y2 - y1)^2)
%calculate the angle theta21
a = (y2-y1)/(x2-x1)
theta21 = atan(a)


%calculate the force
f21 = 24.*((2/r21^13)-(1/r21^7))
%calculate acceleration of particle 1 on 2
a1x = (1/m * f21)*cos(theta21)
a1y = (1/m * f21)*sin(theta21)

end

