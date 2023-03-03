yFreqInit = abs(fft(y));
yFreqInit = yFreqInit(1:floor(length(yFreqInit)/2))*2;

yFreqFinal = abs(fft(yNew));
yFreqFinal = yFreqFinal(1:floor(length(yFreqFinal)/2))*2;
