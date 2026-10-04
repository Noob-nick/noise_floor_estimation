% function [outputArg1,outputArg2] = untitled2(inputArg1,inputArg2)
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
function[Power]=frame(frameLength,hopSize,x)

numFrames = floor((length(x)-frameLength)/hopSize)+1;
% adding a window
window=hann(frameLength);% returns a column vector 
NFFT = frameLength;

Power = zeros((NFFT/2)+1,numFrames);


for k = 1:numFrames

    index = (k-1)*hopSize + (1:frameLength);

    frame = x(index);

    frame = frame .* window';% transposing turns it into row vector

    X = fft(frame,NFFT);

    X = X(1:NFFT/2+1);
Power(:,k)=abs(X).^2;

end
% alpha=0.8
% smoothpower=zeros(size(Power));
% smoothpower(:,1)=Power(:,1);
% for k=2:numFrames
%     smoothpower(:,k)=alpha*smoothpower(:,k-1)...
%        + (1-alpha)*Power(:,k);
% end
%     L=20;
%     NoiseEstimate=zeros(size(smoothpower));
% for k = L:numFrames
% 
%     NoiseEstimate(:,k) = min(smoothpower(:,k-L+1:k),[],2);
% 
% end
% NoiseFloor = NoiseEstimate(:,end);
end