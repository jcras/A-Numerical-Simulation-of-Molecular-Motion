%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9.2 - Subroutine Updates                                      %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 19/5/2016                                                     %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%Project/Matlab Files/Example 9.2                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%initalise variables
idx = 0;
jdx = 0;
kdx = 0;
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
rmna = [];
aix = 0;
aiy = 0;
xNewAll = []
yNewAll = []
ntax = 0;
ntay = 0;
%set x and y particles
x = [1 2 3 4 3];
% set y to be:
y = [1 2 3 7 2.1];
%plot the points
plot(x,y, 'k.', 'Markersize', 40);
%set axispooi
axis([0 10 0 10]);
grid on
rnd = rand(4);
vx = [2*(rnd(1) - 0.5)*(rnd(2))];
vy = [2*(rnd(3) - 0.5)*(rnd(4))];
xprev = x-vx*deltat;
yprev = y-vy*deltat;


%linear indexing
%loop through particle 1

disp(xprev);
disp(yprev);
for i = 1:400
    for jdx = 1:numel(x)
        %loop through other particles against 1
        for idx = 1:numel(x)
            %calculate the distance
                rmn = sqrt((x(1,jdx)-x(1,idx))^2+(y(1,jdx)-y(1,idx))^2);       
            %add rmn to rmna    
            %rmna = [rmna rmn];
            if rmn < 3 && rmn > 0      
            disp(rmn);
            %calculate force 
            fmn = 24*((2/rmn^13)-(1/rmn^7));
            %calculate angle
            a =((y(1,jdx)) - (y(1,idx)))/((x(1,jdx)) - (x(1,idx)));
            theta21= atan(a);
            %calculate acceleration
            aix = (1/m)*(fmn)*cos(theta21)*(-1)*(x(1,idx)-x(1,jdx))/abs(x(1,idx)-(x(1,jdx)));
            aiy = (1/m)*(fmn)*sin(theta21)*(-1)*(y(1,idx)-y(1,jdx))/abs(y(1,idx)-(y(1,jdx)));
           
            %calculate netforce
            %ntfrc = fmn + ntfrc;
            ntax = aix + ntax;
            ntay = aiy + ntay;
            end
        end
        %rmn = rmna(1,idx);
 

            %calculate new position
            xnew = (2*x(1,jdx))-(xprev(1,jdx))+(ntax)*(deltat^2);
            ynew = (2*y(1,jdx))-(yprev(1,jdx))+(ntay)*(deltat^2);
            %insert into x and y into x&y all arays - change this 
            xNewAll = [xNewAll xnew];
            yNewAll = [yNewAll ynew];
     
     
    end
    xprev = x;
    yprev = y;
    x =  xNewAll;
    y =  yNewAll;
    xNewAll=[];
    yNewAll=[];
    
    %for loop check boundary
    for kdx = 1:numel(x)
        if x(1,kdx) < 0
            x(1,kdx) = 10+x(1,kdx);
        elseif x(1,kdx) > 10
            x(1,kdx) = x(1,kdx) - 10;            
        end
        if y(1,kdx) < 0
            y(1,kdx) = 10+y(1,kdx);
        elseif y(1,kdx) > 10
            y(1,kdx) = y(1,kdx) - 10;
        end
    end
    %plot 
              plot(x,y, 'k.', 'Markersize', 40);
                
                hold on
               %turn grid on
             grid on
            %set the axis - change this later
            axis([0 10 0 10]);
           %Name the graph
             title('A numerical simulation of molecular motion')
             pause(.1)
             hold off
             pause(.0000000001)
             
            %reinitialize
    
    ntfrc = 0;  
end

            
