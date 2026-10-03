% function [outputArg1,outputArg2] = untitled(inputArg1,inputArg2)
% %UNTITLED Summary of this function goes here
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
function[signal,burst1,burst2]=sig_gen(t)
%burst in signal
signal = zeros(size(t)); burst1=sin(2*pi*1000*t(10000:15000)); 
burst2=2*sin(2*pi*2500*t(25000:30000));

%x1=sin(2*pi*1000*t);%1000hz signal fs>=2fm 
%x2=2*sin(2*pi*2500*t);%2500 hz signal
% plot(t(1:100),x1(1:100));
% plot(t(1:100),x2(1:100)); 
%signal=x1+x2;
% Insert bursts into complete signal
signal(10000:15000) = burst1;
signal(25000:30000) = burst2;

plot(t(1:100),signal(1:100));
xlabel("time");
ylabel("amplitude");
title("signal is:");
end