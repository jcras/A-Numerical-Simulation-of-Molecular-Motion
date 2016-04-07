%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculating the force between 2 particles                     %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 9/3/2016                                                      %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%set x1,x2,y1,y2, m
x1 = 1;
y1 = 5;
x2 = 2;
y2 = 4;
m = 1;

% plotting x1,x2,y1,y2
plot([x1,x2],[y1,y2],'k.', 'MarkerSize', 10);
%turn grid on
grid on
%set the axis - change this later
axis([0 6 0 6]);
%Name the graph
title('Calculating the force')
xlabel('x')%xaxis label
ylabel('y')%yaxis label
%force (x1,y1,x2,y2)
    
%calculate distance between two particles
r21 = sqrt((x2-x1)^2 + (y2 - y1)^2)

%calculate the angle 021
a = (y2 - y1)/(x1-y1);
theta21 = atan(a)


%calculate the force

f21 = 24.*((2/r21^13)-(1/r21^7))

%calculate acceleration of particle 1 on 2
a1x = (1 * f21)*cos(theta21)
a1y = (1/m * f21)*sin(theta21)


    

