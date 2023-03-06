[file,path] = uigetfile('*.wav','Select a .wav file'); % Prompts user to select a file for input and stores the filename and path as variables
fullPath = append(path, file); % Converts the filename and path to a single string to be read by the audioread function

[y, fs] = audioread(fullPath); % Creates a matrix storing the amplitude data for the audio file and a variable to store the sample rate of the file
t = (0:1:length(y)-1)/fs; % Creates an array of the time each sample is located

channelNum = size(y,2); % Stores the number of channels of audio in the file in a variable