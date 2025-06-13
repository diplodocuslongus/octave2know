% White noise simulated in Matlab
clear all; clc; close all;
L=100000; %Sample length for the random signal
mu=0;
sigma=2;
X=sigma*randn(L,1)+mu;

figure();
subplot(2,1,1)
plot(X);
title(['White noise : \mu_x=',num2str(mu),' \sigma^2=',num2str(sigma^2)])
xlabel('Samples')
ylabel('Sample Values')
grid on;

