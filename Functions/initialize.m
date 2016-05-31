function initialize(deltaR, deltaT, v0, r1, r2, r3, r4, x, y)

% initializing detaR,deltaT and v0
deltaR  = 1;
deltaT  = 0.02;
v0 = 1;

%set r1,r2,r3 and r4 to a matrix of 5 by 5
r1 = rand(5);
r2 = rand(5);
r3 = rand(5);
r4 = rand(5);

% set x to be:
x = [5 2 3 4 5;1 2 3 4 5;1 2 3 4 5;1 2 3 4 5;1 2 3 4 5];
% set y to be:
y = [5 5 5 5 5;4 4 4 4 4;3 3 3 3 3;2 2 2 2 2;1 1 1 1 1];

plot (x,y)

end