% function [outputArg1,outputArg2] = untitled3(inputArg1,inputArg2)
% %UNTITLED3 Summary of this function goes here
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
function[NoiseFloor_dB,AveragePSD_dB,f]=floori(Power,NFFT,fs)

 NoiseFloor = median(Power,2);% median will give background noise as it do not include few signal spikes
NoiseFloor_dB = 10*log10(NoiseFloor + eps);

AveragePSD = mean(Power,2);% this will give signal spikes + background noise
% 
 AveragePSD_dB = 10*log10(AveragePSD + eps);

% creating the frequency axis
f = (0:NFFT/2)*fs/NFFT;
[maxVal, maxIdx] = max(AveragePSD_dB);% gives the maximum value (peak) and (peak)index value of spectrum
fprintf('Peak at %.1f Hz, %.2f dB above noise floor\n', ...
    f(maxIdx), maxVal - NoiseFloor_dB(maxIdx));

figure

 plot(f,AveragePSD_dB,'b','LineWidth',1.5)
 
 hold on

plot(f,NoiseFloor_dB,'r','LineWidth',2)

grid on

xlabel('Frequency (Hz)')
ylabel('Power (dB)')


title('Noise Floor Estimation') 
% as signal is present in every frame therefore median method made average
% spectrum equal to noise floor median method is not desirable for
% continuous signals
end

