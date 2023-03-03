subplot(2,2,1);
plot(y);

subplot(2,2,2);
plot(yNew);
ylim([-1,1]);


subplot(2,2,3);
plot(yFreqInit);
ylim([0, max(yFreqInit)]);

subplot(2,2,4);
plot(yFreqFinal);
ylim([0,max(yFreqInit)]);