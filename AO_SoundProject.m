%% Sound Synthesis Project Fall 2017 EGR 120
% Austin O'Donnell
% AO_SoundProject.m

%% The Sound File for the Sample Note
fileName = 'AltoSax_A3.wav';
[sampleNote,fs] = audioread(fileName);
soundsc(sampleNote,fs);

%% Analyzing the frequency distribution with a FFT
t = (0:length(sampleNote))*(1/fs);
nfft = 2^nextpow2(length(sampleNote));
y = fft(sampleNote,nfft)/length(sampleNote);
f = fs/2*linspace(0,1,nfft/2);
plot(f,2*abs(y(1:nfft/2)))
title('Frequency Distribution of an A3 note played by an Alto Saxophone');
xlabel('Frequency (Hz)');
ylabel('|Amplitude| (Pa)');
xlim([0 0.6e4]); 
ylim([0 0.15]); %yticks([0:.01:0.15]);
%% Relative Amplitudes Array
relA = [0.0611 0.0785 0.1197 0.0397 0.0107];