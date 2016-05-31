%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9.2 - Subroutine Updates                                      %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 5/5/2016                                                      %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%Project/Matlab Files/Example 9.2                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initalise variables
idx = 0;
jdx = 0;
r = 1;
rmn = 0;
fmn = 0;
ntfrc =0;
m = 1;
deltat=.01;
xnew = 0;
ynew = 0;
xcurr = 0;
ycurr = 0;
xprev = 0;
yprev = 0;
x = 0;
y = 0;

%set x and y particles
x = [0 1 1 0]
% set y to be:
y = [1 1 2 2]
%plot the points
plot(x,y, 'k.', 'Markersize', 30)
%set axispooi
axis([0 6 0 6])

%linear indexing
%loop 
for l = 1:100
    for jdx = 1:numel(x) 
        for idx = 1:numel(y)
            %distance
            rmn = sqrt((x(1,jdx)-x(1,idx)).^2+(y(1,jdx)-y(1,idx)).^2)           
        end
        if rmn < 3 && rmn > 0       
            %calculate force 
            fmn = 24*((2/rmn^13)-(1/rmn^7))
            %calculate netforce
            ntfrc = fmn + ntfrc
            %calculate new position 
            xprev = x(jdx)
            yprev = y(jdx)
            xnew = (2*x(idx))-(xprev)+(ntfrc)*(deltat^2)
            ynew = (2*y(idx))-(yprev)+(ntfrc)*(deltat^2)
            %plot 
            plot(xnew,ynew, 'k.', 'Markersize', 30)
            hold on
            %turn grid on
            grid on
            %set the axis - change this later
            axis([0 6 0 6]);
            %Name the graph
            title('A numerical simulation of molecular motion')
            pause(.001)
            
            x(jdx) = xcurr
            y(jdx) = ycurr
            %relabel
            xprev = xcurr
            yprev = ycurr
            xcurr = xnew
            ycurr = ynew
           

            
        end
         
       ntfrc = 0; 
       hold off
    end
    disp(x)
          
        
  
end
        
    
    

