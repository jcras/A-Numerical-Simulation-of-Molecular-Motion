

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Checking the Distance of two particles - FUNCTION             %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 7/4/2016                                                     %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [ r21, theta21, f21, a1x, a1y ] = distance2( x1,y1,x2,y2 )
%set m
m = 1;
deltat=1;
xnew = 1.2;
ynew = 5.2;
xcurr = x1;
ycurr = x2;
xprev = 2;
yprev = 4;


%calculate distance between two particles
r21 = sqrt((x2-x1)^2 + (y2 - y1)^2);

%calculate the angle theta21
a = (y2 - y1)/(x2-x1);
theta21 = atan(a);

%calculate the force
f21 = 24.*((2/r21^13)-(1/r21^7));

%calculate acceleration of particle 1 on 2
a1x = (1/m * f21)*cos(theta21);
a1y = (1/m * f21)*sin(theta21);

%calculate new position 
xnew = (2*xcurr-xprev+a1x*(deltat))^2
ynew = (2*xcurr-yprev+a1y *(deltat))^2

%calculate new velocity

vx = (xnew-xprev)/(2*deltat)
vy = (xnew-yprev)/(2*deltat)

% update the particle postions. 
xprev = xcurr;
yprev = ycurr;
xcurr = xnew;
ycurr = ynew;

end

