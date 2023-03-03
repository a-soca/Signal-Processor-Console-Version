%ws = 25; % Sets a temporary window size for testing (this number must be odd)

nLHS = zeros(1,ws-1); % Preallocates memory for array to increase efficiency
for i = 1:ws-1 % Loops the following for one less time than the user selected window size
    nLHS(i) = ws-i; % Creates a descending array from one less than the window size to 1
end % ends the for loop

n = [nLHS 0 fliplr(nLHS)]; % Constructs the discrete time index array from the descending number array generated previously


% Hanning Function
w = 0.5+0.5*cosd((2*pi*n)/ws); % Creates a window function