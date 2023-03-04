fc = fcUser/fs; % Normalises the cutoff frequency
wc = 2*pi*fc; % Calculates the angular cutoff frequency and stores it as a variable

switch filterType % Depending on the number the user enters, the code corrosponding to this number will run
    case 1 % If 1 is selected, the following code will execute
        % Low pass filter
        hd(n~=0) = 2*fc*(sin(n(n~=0)*wc)/(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 2*fc; % Generates the basic filter response value when the discrete time index is 0
    case 2 % If 2 is selected, the following code will execute
        % Apply HPF
    case 3 % If 3 is selected, the following code will execute
        % Prompt user to enter bandwidth
        % Apply BPF
    case 4 % If 4 is selected, the following code will execute
        % Prompt user to enter bandwidth
        % Apply BSF
end


