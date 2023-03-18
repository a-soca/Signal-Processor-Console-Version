clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio;

while true % Loops until valid input is provided
    ws = str2double(input("Please enter a window size (This number must be odd) : ", 's')); % Prompts the user to input a window size
    if rem(ws,2) ~= 0 && ~isnan(ws) % if the number input is an odd integer, the following code will execute
        break % Exits the while loop as the process was successful and the user input fulfilled requirements
    elseif rem(ws,2) == 0 % If the number input is even, the following code will execute
        fprintf(2, "Number must be an odd integer. Please try again.\n"); % Prints an error message
    else % If the user input was a letter, symbol or not a number then the following will execute
        fprintf(2, "Window size must be a number. Please try again.\n"); % Prints an error message
    end % ends the if statement
end % ends the while loop

fcUser = str2double(input("Please enter a cutoff frequency [0-20000] : ", 's')); % Prompts the user to input a cutoff frequency
while isnan(fcUser) || fcUser <= 0 || fcUser > 20000 % Loops while ws is not between 0 and 20000
    fprintf(2, "This value must be a number between 0 and 20000. Please try again.\n");
    fcUser = str2double(input("Please enter a cutoff frequency [0-20000] : ", 's')); % Prompts the user to input a cutoff frequency
end % Ends while loop

windowFunctionGenerator;
basicFilterResponseGenerator;
filterCoefficientGenerator;
applyFilter;
timeToFrequency;
filterResponseGenerator;

plotData;

export = input("Export audio? [y/n] : ", "s");
while ~ismember(export, ['y','n']) 
    fprintf(2, "Input must be either y or n, Please try again.\n");
    export = input("Export audio? [y/n] : ", "s");
end

if export == 'y'
    exportAudio; % Exports the processed file
    fprintf("File Exported, Program ended successfully\n");
elseif export == 'n'
    fprintf("Program ended successfully\n");
end