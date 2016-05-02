

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Looping the two particles so it moves - FUNCTION              %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 25/4/2016                                                     %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               
%/Users/zoec/Dropbox/DT080B/Semester 2/Project/Matlab Files/Example 9.2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [ r21, theta21, f21, a1x, a1y ] = loop( x1,y1,x2,y2 )
    %set initial values
    m = 1;
    deltat=.01;
   % xnew = 2
    %ynew = 4
    xcurr = x1;
    ycurr = y1;
    xprev = x1;
    yprev = y1;
    
    plotpoints(xcurr,ycurr,x2,y2)
    
    pause(2)
        
        
for v = 1:10000
     

    %calculate distance between two particles
    r21 = sqrt((x2-xcurr)^2 + (y2 - ycurr)^2)

    %calculate the angle theta21
    a = (y2 - ycurr)/(x2-xcurr);
    theta21 = atan(a);

    %calculate the force
    f21 = 24*((2/r21^13)-(1/r21^7))

    %calculate acceleration of particle 1 on 2
    a1x = (1/m * f21)*cos(theta21)*(-1)*(x2-xcurr)/abs(x2-xcurr);
    a1y = (1/m * f21)*sin(theta21)*(-1)*(y2-ycurr)/abs(y2-ycurr);

     %calculate new position 
    xnew = (2*xcurr)-(xprev)+(a1x)*(deltat^2);
    ynew = (2*ycurr)-(yprev)+(a1y)*(deltat^2);
    
    
    
    %calculate new velocity

%     vx = (xnew-xprev)/(2*deltat);
%     vy = (xnew-yprev)/(2*deltat);

    % plotting x1,x2,y1,y2
    plot(xnew,ynew, 'r.', 'MarkerSize', 150)
    hold on
    plot(x2,y2, 'b.', 'Markersize', 150)
    %turn grid on
    grid on
    %set the axis - change this later
    axis([0 10 0 10]);
    %Name the graph
    title('Looping')

    xlabel('x')%xaxis label
    ylabel('y')%yaxis label
    hold off
    pause(.0000000000001)        
     %periodic boundary condition
   
    % update the particle postions. 
    xprev = xcurr;
    yprev = ycurr;
    xcurr = xnew
    ycurr = ynew
    
    
    
    
    
    end
    
end

