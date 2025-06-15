graphics_toolkit qt
figure();
Rxx=1/L*conv(flipud(X),X);
lags=(-L+1):1:(L-1);

%Alternative method
%[Rxx,lags] =xcorr(X,'biased'); 
%The argument 'biased' is used for proper scaling by 1/L
%Normalize auto-correlation with sample length for proper scaling

plot(lags,Rxx); 
title('Auto-correlation Function of white noise');
xlabel('Lags')
ylabel('Correlation')
grid on;
