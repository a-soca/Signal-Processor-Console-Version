clear; % Clears variables stored in memory
clc; % Clears the console
clf; % Clears the plotted axes


[file,path] = uigetfile('*.wav','Select a .wav file'); % Prompts user to select a file for input and stores the filename and path as variables
fullPath = append(path, file); % Converts the filename and path to a single string to be read by the audioread function

[y, fs] = audioread(fullPath); % Creates a matrix storing the amplitude data for the audio file and a variable to store the sample rate of the file
%t = 0:(1/fs):length(y)-1; % Creates an array of the time each sample is located

channelNum = size(y,2); % Stores the number of channels of audio in the file

fprintf("1 : LPF \n2 : HPF \n3 : BPF \n4 : BSF\n\n"); % Prints the filter options in the console
filterType = input("Please enter the type of filter you would like to apply [1,2,3,4] : "); % Prompts the user to select a filter type

switch filterType % Depending on the number the user enters, the code corrosponding to this number will run
    case 1 % If 1 is selected, the following code will execute
        LPF; % Runs the script "LPF"
        disp("success");
end

timeToFrequency;

plotData;