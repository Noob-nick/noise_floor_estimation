clc;
clear;
close all;
fs=8000; %sampling frequency 8000 samples taken in every second
T=5; %duration
t=0:1/fs:T-1/fs;% making a time axis
[signal,signal(10000:15000),signal(25000:30000)]=sig_gen(t,T,fs);