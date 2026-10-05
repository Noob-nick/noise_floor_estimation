clc;
clear;
close all;
fs=8000; %sampling frequency 8000 samples taken in every second
T=5; %duration
t=0:1/fs:T-1/fs;% making a time axis
%will generate a signal which will be a burst signal 
[signal,signal(10000:15000),signal(25000:30000)]=sig_gen(t);
% now will add noise to given signal 
[noise,x]=add_noise(signal,t);
% framing the signal 
% adding the frame length
frameLength = 1024;
hopSize = 512;
[Power,NFFT]=frame(frameLength,hopSize,x);
%noise floor evaluation 
[NoiseFloor_dB,AveragePSD_dB,f]=floori(Power,NFFT,fs);


