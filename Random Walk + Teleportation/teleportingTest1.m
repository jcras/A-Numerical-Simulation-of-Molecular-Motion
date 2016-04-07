%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                            %
% Random Dot Teleporting                                     %
% Zoe Cras                                                   %
% 15/2/2016                                                  %
% Figure 9.2 Computational Physics, 2nd Edition N,K Giordano %
%                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





x = 0;
y = 0;
plot(x,y,'k.','MarkerSize', 300)
grid on
axis([-1 1 -1 1])
pause(.5)


for v = 1:10
    
        
    num = randi([0 3]);
    x = 0;
    y = 0;
    plot(x,y,'k.','MarkerSize', 300)
    grid on
    axis([-1 1 -1 1])
    pause(.5)
    
    
    
    
    if num == 0
        
         num = num * 0;
         x = 0;
         y = 1;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)
         x = 0;
         y = -1;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)    
                       
    elseif num == 1
       
        
        num = num * 1;
         x = 1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)
         num = num * 3;
         x = -1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)     
    
    elseif num == 2
       
        
        num = num * 2;
         x = 0;
         y = -1;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5) 
         num = num * 0;
         x = 0;
         y = 1;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)
         
     
    elseif num == 3
       
        
         num = num * 3;
         x = -1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5) 
           x = 1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 300)
         grid on
         axis([-1 1 -1 1])
         pause(.5)
    
    end
    x = 0;
    y = 0;
    plot(x,y,'k.','MarkerSize', 300) 
    grid on
    axis([-1 1 -1 1])
    pause(.5)  
end




     