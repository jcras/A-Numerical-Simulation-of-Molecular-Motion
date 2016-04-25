

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Looping the two particles so it moves - FUNCTION              %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 9/4/2016                                                      %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [ r21, theta21, f21, a1x, a1y ] = loop( x1,y1,x2,y2 )
    %set initial values
    m = 1;
    deltat=0.02;
   % xnew = 2
    %ynew = 4
    xcurr = x1;
    ycurr = y1;
    xprev = x1
    yprev = y1
    
    plotpoints(xcurr,ycurr,x2,y2)
    
    pause(2)
        
        
for v = 1:15
     

    %calculate distance between two particles
    r21 = sqrt((x2-xcurr)^2 + (y2 - ycurr)^2)

    %calculate the angle theta21
    a = (y2 - ycurr)/(x2-xcurr)
    theta21 = atan(a)

    %calculate the force
    f21 = 24.*((2/r21^13)-(1/r21^7))

    %calculate acceleration of particle 1 on 2
    a1x = (1/m * f21)*cos(theta21)
    a1y = (1/m * f21)*sin(theta21)

     %calculate new position 
    xnew = (2*xcurr)-(xprev)+(f21)*(deltat^2)
    ynew = (2*ycurr)-(yprev)+(f21)*(deltat^2)
    
    %calculate new velocity

    vx = (xnew-xprev)/(2*deltat)
    vy = (xnew-yprev)/(2*deltat)

    % plotting x1,x2,y1,y2
    plot(xcurr,ycurr, 'r.', 'MarkerSize', 13)
    hold on
    plot(x2,y2, 'b.', 'Markersize', 13)
    %turn grid on
    grid on
    %set the axis - change this later
    axis([49 51 19 21]);
    %Name the graph
    title('Looping')
    xlabel('x')%xaxis label
    ylabel('y')%yaxis label
    hold off
    pause(.01)
        
     %periodic boundary condition
     
    
    % update the particle postions. 
    xprev = xcurr
    yprev = ycurr
    xcurr = xnew
    ycurr = ynew
    
    
    
    
    
    end
    
end

