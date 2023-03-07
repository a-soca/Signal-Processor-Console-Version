clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio;

while true % Loops until valid input is provided
    try % Attempts to convert user input to an integer
        ws = str2double(input("Please enter a window size (This number must be odd) : ", 's')); % Prompts the user to input a window size
        if rem(ws,2) ~= 0 && ~isnan(ws) % if the number input is an odd integer, the following code will execute
            break % Exits the while loop as the process was successful and the user input fulfilled requirements
        elseif rem(ws,2) == 0 % If the number input is even, the following code will execute
            fprintf("Number must be odd. Please try again.\n"); % Prints an error message
        else % If the user input was a letter, symbol or not a number then the following will execute
            fprintf("Window size must be a number. Please try again.\n"); % Prints an error message
        end % ends the if statement
    catch % If the process fails, the following code will execute
        fprintf("Window size must be an odd integer. Please try again.\n"); % Prints an error message
    end % Ends the try statement
end % ends the while loop

fcUser = 0; % Initialises fcUser to a value which is not valid so that the while loop is entered
while isnan(fcUser) || fcUser <= 0 || fcUser > 20000 % Loops while ws is not between 0 and 20000
    fcUser = str2double(input("Please enter a cutoff frequency [0-20000] : ", 's')); % Prompts the user to input a cutoff frequency
end % Ends while loop

windowFunctionGenerator;
basicFilterResponseGenerator;
filterCoefficientGenerator;
applyFilter;
timeToFrequency;

plotData;

if input("Export audio? [1/0] : ")
    exportAudio; % Exports the processed file
    fprintf("File Exported, Program ended successfully");
else
    fprintf("Program ended successfully");
end