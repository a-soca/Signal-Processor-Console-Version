clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio; % Calls the script used to import audio and find attributes of the file

fprintf("Audio Information:\nFile path : %s\nNumber of channels : %d\nSample Rate : %dHz\nDuration : %gs\n\n", fullPath, channelNum, fs, length(y)/fs); % Prints the attributes of the imported audio file

while true % Loops until valid input is provided
    ws = str2double(input("Please enter a window size (This number must be odd) : ", 's')); % Prompts the user to input a window size
    if rem(ws,2) ~= 0 && ~isnan(ws) % if the number input is an odd integer, the following code will execute
        break % Exits the while loop as the process was successful and the user input fulfilled requirements
    elseif rem(ws,2) == 0 % If the number input is even, the following code will execute
        fprintf(2, "\nNumber must be an odd integer. Please try again.\n"); % Prints an error message
    else % If the user input was a letter, symbol or not a number then the following will execute
        fprintf(2, "\nWindow size must be a number. Please try again.\n"); % Prints an error message
    end % ends the if statement
end % ends the while loop

fcUser = str2double(input("\nPlease enter a cutoff frequency [0-20000] : ", 's')); % Prompts the user to input a cutoff frequency
while isnan(fcUser) || fcUser <= 0 || fcUser > 20000 % Loops while ws is not between 0 and 20000
    fprintf(2, "\nThis value must be a number between 0 and 20000. Please try again.\n");
    fcUser = str2double(input("Please enter a cutoff frequency [0-20000] : ", 's')); % Prompts the user to input a cutoff frequency
end % Ends while loop

windowFunctionGenerator; % Calls the script used to generate the window function vector
basicFilterResponseGenerator; % Calls the script used to generate the basic filter response vector
filterCoefficientGenerator; % Calls the script used to generate the array of filter coefficients

applyFilter; % Calls the script used to convolute the imported audio and output a filtered matrix

timeToFrequency; % Calls the script used to calculate the frequency spectrum of the initial and processed audio
filterResponseGenerator; % Calls the script used to find the filter response using the coefficients generated previously

plotData; % Calls the script used to plot the data imported/calculated in a figure containing multiple sub plots

export = input("\nExport audio? [y/n] : ", "s"); % Prompts the user to enter y/n for exporting the filtered audio to a .wav file
while ~ismember(export, ['y','n']) % If the user input is not y or n, the following code will execute until y or n is input.
    fprintf(2, "\nInput must be either y or n, Please try again.\n"); % Prints an error message to the console
    export = input("Export audio? [y/n] : ", "s"); % Prompts the user to enter y/n for exporting the filtered audio to a .wav file
end % Ends the while loop

if export == 'y' % If the user selected y, the following code will execute
    exportAudio; % Exports the processed file
    fprintf("\nFile Exported to : %sProcessed.wav\n\nProgram ended successfully\n", path); % Prints the file path to the console and updates the user on the status of the program
elseif export == 'n' % If the user selected n, the following code will execute
    fprintf("\nProgram ended successfully\n"); % Prints the status of the program to the console
end % Ends the if statement