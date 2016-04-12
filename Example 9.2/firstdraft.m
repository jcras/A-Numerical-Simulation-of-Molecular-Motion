%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initializing a molecular dynamics Simulation                  %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 2/3/2016                                                     %
%                                                               %               
% Example 9.2 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initializing detaR,deltaT and v0
% deltaR  = 1;
deltaT  = 0.02;
v0 = 1;

%set r1,r2,r3 and r4 to a matrix of 5 by 5
r1 = rand(5);
r2 = rand(5);
r3 = rand(5);
r4 = rand(5);

% set x to be:
x = [2 4 6 8 10;2 4 6 8 10;2 4 6 8 10;2 4 6 8 10;2 4 6 8 10];
% set y to be:
y = [10 10 10 10 10;8 8 8 8 8;6 6 6 6 6;4 4 4 4 4; 2 2 2 2 2];

% plotting X and Y
plot(x,y,'k.', 'MarkerSize', 10)
%turn grid on
grid on
%set the axis - change this later
axis([0 12 0 12]);
%Name the graph
title('Initializing a molecular dynamics simulation subroutine update')
xlabel('x')%xaxis label
ylabel('y')%yaxis label
%give a moment delay
pause(.5)

% end plot

%equations for displacing the particles randomly


x = x + 2.*(r1 -0.5).*deltaR;
y = y + 2.*(r2 -0.5).*deltaR;




for i = 1:25
    pos = [x,y];
    rij = pdist(pos)
    
%     %skip if rij is bigger than 4
%     if rij > 4
%         rij = 0;
%     
%     
%     else
%         
    end
        
end

% %replotting particles in black with a dot, size 10
% plot(x,y,'k.', 'MarkerSize', 10)
% %turn grid on
% grid on
% %set the axis - change this later
% axis([0 12 0 12]);
% %Name the graph
% title('Initializing a molecular dynamics simulation')
% xlabel('x')%xaxis label
% ylabel('y')%yaxis label
% 
% %randomised initial velocity 
% initVeX = 2.*(r3 - 0.5).*v0;
% initVeY = 2.*(r4 - 0.5).*v0;
% %%Verlet method
% xprev = x - initVeX .* deltaT;
% yprev = y - initVeY .* deltaT;





    