%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                            %
% Lennard-Jones Potential                                    %
% Zoe Cras                                                   %
% 10/2/2016                                                  %
% Figure 9.1 Computational Physics, 2nd Edition N,K Giordano %
%                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set r  
r = 3.4:.1:13;
% set Sigma
s = 3.4;
% set epsilon
e = 1;
% set x to sigma divided by r
x = (s./r); 
% set y equation
y = 4.*((x.^12) - (x.^6));
% plot x divided by epsilon and y
plot(e./x,y)


% set title
title('Lennard-Jones potential')
% y axis label
hyL =ylabel('V(r)/\bf\epsilon','fontsize',14);
get(hyL,'interpreter'); 
% x axis label
hxL = xlabel('r / \bf\sigma','fontsize',14);
get(yxL,'interpreter'); 