function [] = plotpoints (x1,y1,x2,y2) 

    % plotting x1,x2,y1,y2
    plot([x1,x2],[y1,y2], 'k.', 'MarkerSize', 35)

    %turn grid on
    grid on
    %set the axis - change this later
    axis([0 6 0 6]);
    %Name the graph
    title('Function to plot two points')
    xlabel('x')%xaxis label
    ylabel('y')%yaxis label
