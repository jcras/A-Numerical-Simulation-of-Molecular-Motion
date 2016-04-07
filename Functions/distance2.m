

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Checking the Distance of two particles - FUNCTION             %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 14/3/2016                                                     %
%                                                               %               
% Example 9.1 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [ r21, theta21, f21, a1x, a1y ] = distance2( x1,y1,x2,y2 )
%set m
m = 1;


%calculate distance between two particles
r21 = sqrt((x2-x1)^2 + (y2 - y1)^2);



%perodic boundary
coordinates = [x1, y1, x2, y2]
for idx = 1:numel(coordinates)
    element = coordinates(idx)
    
    %calculate distance to the border for each particle
    distance1 = idx - 0
    distance1 = idx - 6
    
    distance2 = sqrt((x2-x1)^2 + (y2 - y1)^2);
    
    if distance2 <= r21
        r21 = distance2
    else r21 = r21
        
    end
    
    
end


%calculate the angle theta21
a = (y2 - y1)/(x2-x1);
theta21 = atan(a);

%calculate the force
f21 = 24.*((2/r21^13)-(1/r21^7));

%calculate acceleration of particle 1 on 2
a1x = (1/m * f21)*cos(theta21);
a1y = (1/m * f21)*sin(theta21);

end

