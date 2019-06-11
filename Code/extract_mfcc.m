[sample,Fs] = audioread('C:/FYP/report/Code/Audio recording 2019-01-11 16-26-00.wav');
Freq = 44100 % Hz, https://developer.android.com/reference/android/media/AudioFormat.html 
[coeffs,delta,deltaDelta,loc] = mfcc(sample,Freq) % Audio Toolbox: https://www.mathworks.com/help/audio/ref/mfcc.html
