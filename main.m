clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears plotted figures

importAudio;

ws = input("Please enter a window size (This number must be odd) : "); % Prompts the user to input a window size

fcUser = input("Please enter a cutoff frequency : "); % Prompts the user to input a cutoff frequency

fprintf("1 : LPF \n2 : HPF \n3 : BPF \n4 : BSF\n\n"); % Prints the filter options in the console
filterType = input("Please enter the type of filter you would like to apply [1,2,3,4] : "); % Prompts the user to select a filter type

windowFunctionGenerator;
basicFilterResponseGenerator;
filterCoefficientGenerator;
applyFilter;
timeToFrequency;

plotData;

if input("Export audio? [1/0] : ")
    exportAudio; % Exports the processed file
end