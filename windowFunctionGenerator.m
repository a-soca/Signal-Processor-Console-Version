nLHS = zeros(1,ws-1); % Preallocates memory for array to increase efficiency
for i = 1:ws-1 % Loops the following for one less time than the user selected window size
    nLHS(i) = ws-i; % Creates a descending array from one less than the window size to 1
end % ends the for loop

n = [nLHS 0 fliplr(nLHS)]; % Constructs the discrete time index array from the descending number array generated previously

fprintf("1 : Hanning Function \n2 : Hamming Function \n3 : Blackman Function\n\n"); % Displays a list of options in the console

wType = input("Please select the type of window function [1,2,3]: "); % Prompts user to specify which type of window function to generate

% User input validation here

switch wType % Depending on the number input by the user, one of the following options will be executed
    case 1
        % Hanning Function
        w = 0.5 + 0.5*cos((2*pi*n)/ws); % Creates the Hanning window function
    case 2
        % Hamming Function
        w = 0.54 + 0.46*cos((2*pi*n)/ws); % Creates the Hamming window function
    case 3
        % Blackman Function
        w = 0.42 + 0.5*cos((2*pi*n)/(ws-1)); % Creates the Blackman window function
end % Ends the switch statement