%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initializing a molecular dynamics Simulation                  %
%                                                               %
% by Zoe Cras                                                   %
%                                                               %
% 17/2/2016                                                     %
%                                                               %               
% Example 9.1 Computational Physics, 2nd Edition, N, K Giordano %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





% initialize deltaR to 1
deltaR  = 1;

% initialize deltaT to 0.02
deltaT  = 0.02;


% initialize v0 to 1
v0 = 1;
%set r1 and r2 to a matrix of 5 by 5
r1 = rand(5);
r2 = rand(5);
% set x to be:
x = [2 4 6 8 10;2 4 6 8 10;2 4 6 8 10;2 4 6 8 10;2 4 6 8 10];
% set y to be:
y = [10 10 10 10 10;8 8 8 8 8;6 6 6 6 6;4 4 4 4 4; 2 2 2 2 2];

%plot particles in black with a dot, size 10
h = plot(x,y,'k.', 'MarkerSize', 10);
%turn grid on
grid on
%set the axis - change this later
axis([0 12 0 12]);
%Name the graph
title('Initializing a molecular dynamics simulation')

xlabel('x')%xaxis label
ylabel('y')%yaxis label

%give a moment delay
pause(5)


h.XDataSource = 'x';
h.YDataSource = 'y';

% %equations for displacing the particles randomly
 x = x + 2.*(r1 -0.5).*deltaR;
 y = y + 2.*(r2 -0.5).*deltaR;
 
 
 
 refreshdata
 % plot particles in black with a dot, size 10
% plot(x,y,'k.', 'MarkerSize', 10)
% %turn grid on
% grid on
% %set the axis - change this later
% axis([0 12 0 12]);
% %Name the graph
% title('Initializing a molecular dynamics simulation')
% 
% xlabel('x')%xaxis label
% ylabel('y')%yaxis label

