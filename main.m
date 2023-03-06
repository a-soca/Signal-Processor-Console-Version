clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio;

%ws = 0; % Initialises ws to a value which is not valid so that the while loop is entered
%while rem(ws,2) == 0 % Loops while ws is not odd
    ws = input("Please enter a window size (This number must be odd) : "); % Prompts the user to input a window size
%end % Ends while loop

%fcUser = 0; % Initialises fcUser to a value which is not valid so that the while loop is entered
%while fcUser < 0 || fcUser > 20000 % Loops while ws is not between 0 and 20000
    fcUser = input("Please enter a cutoff frequency [0-20000] : "); % Prompts the user to input a cutoff frequency
%end % Ends while loop

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