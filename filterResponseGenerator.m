[H,w] = freqz(h); % Calculates the frequency response of the filter

w = w/(2*pi)*fs; % Converts from rad/sample to hz for plot

figure; % Creates a new figure
subplot(2,1,1); % Targets the left axes
plot(w,abs(H)); % Plots the amplitude response of the filter
title("Filter Amplitude Response"); % Adds a title
xlabel('Frequency / Hz'); % Labels the x axis
ylabel('Amplitude'); % Labels the y axis
xlim([0, 20000]); % Limits the range of x values to that of the audible frequency spectrum


subplot(2,1,2); % Targets the right axes
plot(w,angle(H)); % Plots the phase response of the filter
title("Filter Phase Response"); % Adds a title
xlabel('Frequency / Hz'); % Labels the x axis
ylabel('Phase / Radians'); % Labels the y axis
