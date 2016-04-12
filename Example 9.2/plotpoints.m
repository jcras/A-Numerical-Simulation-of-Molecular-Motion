function [] = plotpoints (xcurr,ycurr,x2,y2) 

    % plotting x1,x2,y1,y2
    plot(xcurr,ycurr, 'r.', 'MarkerSize', 13)
        hold on
        plot(x2,y2, 'b.', 'Markersize', 13)
        %turn grid on
        grid on
        %set the axis - change this later
        axis([0 6 0 6]);
        %Name the graph
        title('Looping')
        xlabel('x')%xaxis label
        ylabel('y')%yaxis label
        hold off
    %turn grid on
    grid on
    %set the axis - change this later
    axis([0 6 0 6]);
    %Name the graph
    title('Looping')
    xlabel('x')%xaxis label
    ylabel('y')%yaxis label
