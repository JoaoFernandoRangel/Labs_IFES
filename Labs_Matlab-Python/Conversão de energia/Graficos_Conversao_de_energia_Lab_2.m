freq = 60; % Frequency of the sine wave
w = 2*pi*freq; % Angular frequency
t = 0:0.001:0.1; % Time vector

tensao = [27.53 54.17 80.13 104.30];
corrente = [50.28 100.49 150.46 198.79];

% Loop through all values of tensao and corrente
for i = 1:length(tensao)
    % Calculate the sine wave with amplitude of 20/sqrt(2)
    tensao_i = (tensao(i)/sqrt(2))*sin(w*t);
    corrente_i = (corrente(i)/sqrt(2))*sin(w*(t-79.8*pi/180));
    
    % Find the intersection point
    %[x,y] = intersections(t, tensao_i, t, corrente_i);
    %intersect_str = ['Intersection at (' num2str(x) ',' num2str(y) ')'];
    
    % Plot the sine wave and intersection point
    figure;
    plot(t, tensao_i, 'b');
    hold on;
    plot(t, corrente_i, 'r');
    plot([0 max(t)], [0 0], 'k');
    %plot(x, y, 'ko', 'MarkerSize', 10, 'LineWidth', 2);
    %text(x+0.005, y+5, intersect_str);
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(['Sine Wave with Amplitude of ' num2str(tensao(i)/sqrt(2)) ' and ' num2str(corrente(i)/sqrt(2)) ' Delayed by 79.8 Degrees']);
    legend('Tensao', 'Corrente', 'Zero Line', 'Intersection');
    grid on;
end
