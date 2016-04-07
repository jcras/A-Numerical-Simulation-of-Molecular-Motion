%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initializing a molecular dynamics Simulation                  %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 15/2/2016                                                     %
%                                                               %           
% Example 9.1 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialise N 
N = 1:4;
% Initialise L 
 
% Set initial positions and velocities of the particles:
%deltaR  = 
% Max velecity is 2 points
v0 = 2;
rnd = rand(1);%set rnd between 0 and 1

% Start for loop to go through the particles

for i = 1:length(N)
    % set the inital start of the particles
    
     % if n is 0
    if i == 1         
         % set the axis at (4,7)
         x = 3;
         y = 7;
         
    % if N is 2                   
    elseif i == 2         
         % set the axis at (8,7)
         x = 7;
         y = 7;

        
    % if N is 3                   
    elseif i == 3
         % set the axis at (4,4)
         x = 7;
         y = 3;
  
           
    % if N is 4                   
    elseif i == 4
         % set the axis at (4,8)
         x = 3;
         y = 3;
    
    
    
    
    
    %set deltaR
    deltaR = 2;
    
   
    
    
    
    %end if/else statement
    end
    
    %plot particles in black with a dot, size 10
    plot(x,y, 'k.', 'MarkerSize', 10);
    %turn grid on
    grid on;
    %set the axis - change this later
    axis([0 10 0 10]);
    % hold the points
    hold on
    
    %set current values for x and y
    %set currentx
    currentx = x + 2.*(rnd - 0.5).*deltaR
    
    %set currenty
    currenty = y + 2.*(rnd - 0.5).*deltaR
    
    x = currentx;
    y = currenty;
    
    
    
    
end
    
    



    
    
    