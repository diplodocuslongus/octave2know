close all
fs = 20e7;
sine = dsp.SineWave('Amplitude',1,'Frequency',10e6,'SampleRate',fs,'SamplesPerFrame',1000000);
y = sine();
y = y+ randn(length(y),1);

figure(1)
subplot 211
title('psd')
hold on
subplot 212
title('Power spectrum')
hold on
for method = {'psd', 'power'}
    for nsc = [500000, 50000, 5000]
        nov = floor(nsc/2);
        nff = max(256,2^nextpow2(nsc));

        [pxx, f] = pwelch(y,rectwin(nsc),nov,nff,fs, string(method));
        pxx = 10*log10(pxx) + 30; % also convert to dBm
        
        if strcmp(string(method), "psd")
            subplot 211
            ylabel("PSD (dBm/Hz)");
        else
            subplot 212
            ylabel("PS (dBm)");
        end
        plot(f, pxx);
        grid on;
        xlim([0 20e6]);
        xlabel("Frequency (Hz)");
        
    end
end
legend('nsc = 500000', 'nsc = 50000', 'nsc = 5000');
