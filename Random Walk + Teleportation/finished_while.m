n = 2
x = 0;
y = 0;
plot(x,y,'k.','MarkerSize', 100)
grid on
axis([-2 2 -2 2])
pause(.5)


while n > 1
    
    
    num = randi([0 3])
    

    if num == 0
        
         num = num * 0;
         x = 0;
         y = 1;
         plot(x,y,'k.','MarkerSize', 100)
         grid on
         axis([-2 2 -2 2])
         pause(.5)
                       
    elseif num == 1
       
        
        num = num * 1;
         x = 1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 100)
         grid on
         axis([-2 2 -2 2])
         pause(.5)
    
    elseif num == 2
       
        
        num = num * 2;
         x = 0;
         y = -1;
         plot(x,y,'k.','MarkerSize', 100)
         grid on
         axis([-2 2 -2 2])
         pause(.5)    
         
     
    elseif num == 3
       
        
         num = num * 3;
         x = -1;
         y = 0;
         plot(x,y,'k.','MarkerSize', 100)
         grid on
         axis([-2 2 -2 2])
         pause(.5)     
    
    end
end




     