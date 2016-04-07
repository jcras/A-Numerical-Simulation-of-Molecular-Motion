
plot(x,y,'r.','MarkerSize', 10)

for v = 1:20
    num = randi([0 3])
    x = 0;
    y = 0;

    if num == 0
         num = num * 0;
         x = 1;
         y = 0;
         plot(x,y,'r.','MarkerSize', 10)
            
    elseif num == 1
         num = num * 1;
         x = 1;
         y = 1;
         plot(x,y,'r.','MarkerSize', 10)

    elseif num == 2
         num = num * 2;
         x = 1;
         y = 0;
         plot(x,y,'r.','MarkerSize', 10)

    else num == 3
         num = num * 3;
         x = 0;
         y = -1;    
         plot(x,y,'r.','MarkerSize', 10)
    end
end    
grid on    
linkdata on    
 

     