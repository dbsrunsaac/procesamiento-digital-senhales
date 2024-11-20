clc, clear;
[y, Fs] = audioread("gminor_chopin.wav");

% Diseñando el filtro
% f1, f2 frecuencia de corte inferior y superior respectivamente
% 28 4196 (piano)
% 30 147 (bombo)
f1 = 30;
f2 = 147;
fs = 48000;
fny = fs/2; 
% Cuando el filtro es de orden n el prototipo (Ec. de diferencias) es de
% orden 2*n
[b, a] = butter(1,[f1/fny, f2/fny],'bandpass');

disp(b);
disp(a);