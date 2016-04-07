%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                            %
% Random Dot Teleporting                                     %
% Zoe Cras                                                   %
% 15/2/2016                                                  %
% Figure 10.1 Computational Physics, 2nd Edition N,K Giordano %
%                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%initiate x 
x = 5;
%initiate y
y = 5;
%plot x and y using a black . with a marker size
plot(x,y,'k.','MarkerSize', 15)
% turn on grid
grid on
%set axis
axis([0 10 0 10])
%give a .5 delay
pause(1)

%for loop begin from 1-70
for v = 1:70
    
    %generate random number from 0 - 3     
    num = randi([0 3])
    
    % if number is 0
    if num == 0;         
         % add 1 to y
         y = y + 1;
         
    % if number is 1                   
    elseif num == 1
            % add 1 to x
            x = x + 1;
    % if number is 2                   
    elseif num == 2
            % take 1 from y
            y = y - 1; 
  
    % if number is 3                   
    elseif num == 3
            % -1 from x
            x = x - 1; 
    end
    
    
    
    % plot x and y
         plot(x,y,'k.','MarkerSize', 15)
         % turn on grid
         grid on
         %set axis
         axis([0 10 0 10])
         %give a .5 delay
         pause(.3)
         % if x = 10                  
    if x >= 10
        % change x to 0
        x = 0;
        
     % if y = 10                    
    elseif y >= 10
        % change y to 0
        y = 0; 
         
        % if x = 0                  
    elseif x <= 0
        % change y to 10
        x = 10; 
    
    % if y = 0                  
    elseif y <=0
        % change y to 10
        y = 10;     
    
    end
end




     