# Signal Processor (Console Version)

## Aims
This MATLAB application algorithmically suppresses noise and isolates frequencies in audio files using finite impulse response filtering. It also provides visualisation for the frequency spectrum for both the processed and unprocessed files. The generated filter attributes such as amplitude response, phase response, basic filter response and filter coefficients are also visualised.

## Features
- High pass, Low pass, Band pass and Band stop filters
- Hanning, Hamming and Blackman window functions
- Support for mono, stereo and files with arbitrary channel numbers

The user has control over the following parameters :
- Cutoff frequency
- Bandwidth (for band pass and band stop filters)
- Filter type
- Window Function
- Window Size (and by extension filter Q)

## Dependencies
This program requires **one** of the following MATLAB add-ons:
- Audio Toolbox
- Communications Toolbox
- DSP System Toolbox
- Signal Processing Toolbox
- Wavelet Toolbox
