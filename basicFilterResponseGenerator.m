fc = fcUser/fs; % Normalises the cutoff frequency
wc = 2*pi*fc; % Calculates the angular cutoff frequency and stores it as a variable

fprintf("\n1 : LPF \n2 : HPF \n3 : BPF \n4 : BSF\n\n"); % Prints the filter options in the console

% Conditions for validity : 
% - User input must be 1, 2, 3 or 4
filterType = str2double(input("Please enter the type of filter you would like to apply [1,2,3,4] : ", 's')); % Prompts the user to select a filter type
while ~ismember([1,2,3,4], filterType) % Loops the following until valid user input is provided (Input validation routine)
    fprintf(2, "\nInput must be 1, 2 or 3. Please try again.\n");
    filterType = str2double(input("Please enter the type of filter you would like to apply [1,2,3,4] : ", 's')); % Prompts the user to select a filter type
end % Ends the loop

switch filterType % Depending on the number the user enters, the code corrosponding to this number will run
    case 1 % If 1 is selected, the following code will execute
        % Low pass filter
        hd(n~=0) = 2*fc*(sin(n(n~=0)*wc)./(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 2*fc; % Generates the basic filter response value when the discrete time index is 0
    case 2 % If 2 is selected, the following code will execute
        % High pass filter
        hd(n~=0) = -2*fc*(sin(n(n~=0)*wc)./(n(n~=0)*wc)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 1-2*fc; % Generates the basic filter response value when the discrete time index is 0
    case 3 % If 3 is selected, the following code will execute
        % Band pass filter
        [fc1, fc2, wc1, wc2] = findCutoff(fc, fs); % Finds the lower and upper cutoff frequencies around the central selected cutoff frequency
        hd(n~=0) = 2*fc2*(sin(n(n~=0)*wc2)./(n(n~=0)*wc2))-2*fc1*(sin(n(n~=0)*wc1)./(n(n~=0)*wc1)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 2*(fc2-fc1); % Generates the basic filter response value when the discrete time index is 0
    case 4 % If 4 is selected, the following code will execute
        % Band stop filter
        [fc1, fc2, wc1, wc2] = findCutoff(fc, fs); % Finds the lower and upper cutoff frequencies around the central selected cutoff frequency
        hd(n~=0) = 2*fc1*(sin(n(n~=0)*wc1)./(n(n~=0)*wc1))-2*fc2*(sin(n(n~=0)*wc2)./(n(n~=0)*wc2)); % Generates the basic filter response array when the value for discrete time index is not 0
        hd(n==0) = 1-2*(fc2-fc1); % Generates the basic filter response value when the discrete time index is 0
end % Ends the switch statement

function [fc1, fc2, wc1, wc2] = findCutoff(fc, fs) % Declares function to request the bandwidth of the BP/BS filter from the user and calculates the cutoff frequencies required
    bandwidth = input("\nPlease enter a bandwidth : "); % Prompts the user to enter a bandwidth for the filter
    while bandwidth <= 0 || bandwidth > 20000 || isalpha(bandwidth) % If the user inputs a value which is less than or equal to 0, more than 20000 or is not a number, the following code will execute in a loop until a valid input is provided
        fprintf(2, "\nInput must be greater than 0 and less than 20000. Please try again"); % Prints an error message to the console
        bandwidth = input("Please enter a bandwidth : "); % Prompts the user to enter a bandwidth for the filter
    end % Ends the while loop
    fc1 = fc-(bandwidth/fs)/2; % Finds the lower cutoff frequency
    wc1 = 2*pi*fc1; % Calculates the lower angular cutoff frequency
    fc2 = fc+(bandwidth/fs)/2; % Finds the upper cutoff frequency
    wc2 = 2*pi*fc2; % Calculates the upper angular cutoff frequency
end % Ends the function
