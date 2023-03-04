% Low pass filter
%fcUser = 500; % Sets a temporary cutoff frequency for testing
%fs = 44100; % Sets a temporary sample rate for testing

fc = fcUser/fs; % Normalises the cutoff frequency
wc = 2*pi*fc; % Calculates the angular cutoff frequency and stores it as a variable
hd(n~=0) = 2*fc*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
hd(n==0) = 2*fc; % Generates the basic filter response value when the discrete time index is 0