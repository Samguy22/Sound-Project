%% EGR 120 Sound Synthesis Project
% Piano C Sound
%% Cleanup.
clear all
clc
%% Load the note.
[note_c, note_freq] = audioread('c.wav');
soundsc(note_c, note_freq);
%% Note fft.
note_time = (0:length(note_c))*(1/note_freq);
note_fft = 2^nextpow2(length(note_c));
plot_y = fft(note_c, note_fft)/length(note_c);
plot_f = note_freq/2*linspace(0,1,note_fft/2);
plot(plot_f,2*abs(plot_y(1:note_fft/2)));
xlim([0,0.2e4]);
title('Amplitude of Piano C');
xlabel('Frequncy (Hz)');
ylabel('Amplitude (Db)');
%% Amplitude Array.

