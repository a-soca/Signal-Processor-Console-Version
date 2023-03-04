fc = fcUser/fs; % Normalises the cutoff frequency
wc = 2*pi*fc; % Calculates the angular cutoff frequency and stores it as a variable

switch filterType % Depending on the number the user enters, the code corrosponding to this number will run
    case 1 % If 1 is selected, the following code will execute
        % Low pass filter
        hd(n~=0) = 2*fc*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 2*fc; % Generates the basic filter response value when the discrete time index is 0
    case 2 % If 2 is selected, the following code will execute
        % High pass filter
        hd(n~=0) = -2*fc*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 1-2*fc; % Generates the basic filter response value when the discrete time index is 0
    case 3 % If 3 is selected, the following code will execute
        % Band pass filter
        findCutoff(); % Finds the lower and upper cutoff frequencies around the central selected cutoff frequency
        hd(n~=0) = 2*fc2*(sin(n(n~=0)*wc)/(n(n~=0)*wc))-2*fc1*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 2*(fc2-fc1); % Generates the basic filter response value when the discrete time index is 0
    case 4 % If 4 is selected, the following code will execute
        % Band stop filter
        findCutoff(); % Finds the lower and upper cutoff frequencies around the central selected cutoff frequency
        hd(n~=0) = 2*fc1*(sin(n(n~=0)*wc)/(n(n~=0)*wc))-2*fc2*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 1-2*(fc2-fc1); % Generates the basic filter response value when the discrete time index is 0
end

function [fc1, fc2] = findCutoff()
    bandwidth = input("Please enter a bandwidth : ");
    fc1 = (fc-bandwidth/fs)/2;
    fc2 = (fc+bandwidth/fs)/2;
end
