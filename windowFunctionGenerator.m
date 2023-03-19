nRHS = 1:(ws-1)/2; % Creates a vector from 1 to one less than half the window size

n = [fliplr(nRHS) 0 nRHS]; % Constructs the discrete time index array from the ascending number vector generated previously (nRHS)

fprintf("\n1 : Hanning Function \n2 : Hamming Function \n3 : Blackman Function\n"); % Displays a list of options in the console

% Conditions for validity : 
% - User input must be 1, 2 or 3
wType = str2double(input("\nPlease select the type of window function [1,2,3]: ", 's')); % Prompts user to specify which type of window function to generate
while ~ismember([1,2,3], wType) % Loops the following until valid user input is provided (Input validation routine)
    fprintf(2, "\nInput must be 1, 2 or 3. Please try again.\n");
    wType = str2double(input("Please select the type of window function [1,2,3]: ", 's')); % Prompts user to specify which type of window function to generate
end % Ends the loop

switch wType % Depending on the number input by the user, one of the following options will be executed
    case 1 % If the user selected 1, the following code will execute
        % Hanning Function
        w = 0.5 + 0.5*cos((2*pi*n)/ws); % Creates the Hanning window function
    case 2 % If the user selected 2, the following code will execute
        % Hamming Function
        w = 0.54 + 0.46*cos((2*pi*n)/ws); % Creates the Hamming window function
    case 3 % If the user selected 3, the following code will execute
        % Blackman Function
        w = 0.42 + 0.5*cos((2*pi*n)/(ws-1)); % Creates the Blackman window function
end % Ends the switch statement