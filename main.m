clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio;

ws = input("Please enter a window size (This number must be odd) : "); % Prompts the user to input a window size

fcUser = input("Please enter a cutoff frequency : "); % Prompts the user to input a cutoff frequency

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