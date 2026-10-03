% % function [outputArg1,outputArg2] = untitled2(inputArg1,inputArg2)
% %UNTITLED2 Summary of this function goes here
% %   Detailed explanation goes here
% arguments (Input)
%     inputArg1
%     inputArg2
% end
% 
% arguments (Output)
%     outputArg1
%     outputArg2
% end
% 
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;
% end
function[noise,x]=add_noise(signal,t)
%add noise
noise=0.3*randn(size(signal));
%recieved signal
x=signal+noise;
plot(t(1:100),x(1:100));
xlabel("time");
ylabel("noise");
title("signal with noise");
end