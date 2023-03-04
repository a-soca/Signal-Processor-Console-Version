% Low pass filter
fc = 500; % Sets a temporary cutoff frequency for testing
wc = 2*pi*fc; % Calculates the angular cutoff frequency and stores it as a variable
hd(n~=0) = 2*fc*(sind(n(n~=0)*wc)/n(n~=0)*wc); % Generates the basic filter response array when the value for discrete time index is not 0
hd((ws-1)/2) = 2*fc; % Generates the basic filter response value when the discrete time index is 0. As this value is always the central element, the position is hard coded in order to increase efficiency.