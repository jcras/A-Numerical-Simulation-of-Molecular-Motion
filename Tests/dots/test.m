fontSize = 16;
% Generate the sample data.
X=[1,3,5,7,8,9,23,25,30]
Y=[1,3,5,7,9,12,13,17,20]
% Find the coefficients.
coeffs = polyfit(X, Y, length(Y)+1)
plot(X, Y, 'ro', 'MarkerSize', 10);
% Make a finer sampling so we can see what it
% does in between the training points.
interpolatedX = linspace(min(X), max(X), 500);
interpolatedY = polyval(coeffs, interpolatedX);
% Plot the interpolated points.
hold on;
plot(interpolatedX, interpolatedY, 'b-', 'LineWidth', 3);
grid on;
title('Interpolating Polynomial', 'FontSize', fontSize);
xlabel('X', 'FontSize', fontSize);
ylabel('Y', 'FontSize', fontSize);
% Enlarge figure to full screen.
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);