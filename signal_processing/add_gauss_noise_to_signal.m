pkg load communications
graphics_toolkit("gnuplot")
% graphics_toolkit("qt")
% Generate a clean signal
t = 0:0.01:1;
signal = sin(2*pi*5*t);

% Add Gaussian noise
snr_dB = 10; % Signal-to-noise ratio in dB
noisy_signal = awgn(signal, snr_dB);

% Plot the signals
plot(t, signal, 'b', t, noisy_signal, 'r');
legend('Clean Signal', 'Noisy Signal');
title('Signal with Gaussian Noise');
xlabel('Time (s)');
ylabel('Amplitude');
drawnow()
pause()
