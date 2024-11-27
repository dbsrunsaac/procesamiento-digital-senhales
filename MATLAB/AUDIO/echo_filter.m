function [yecho, h] = echo_filter(signal, times, attenuations, fs)

h(1) = 1; % This is the first coefficient of the echo filter

% computing the impulse response h

for i = 1:length(times),
    samples(i) = times(i)*fs;
    % Calculating the sample-times (N = t*fs) h(floor(sample_times))
    h(floor(samples(i)) = attenuations(i);
end

% You may use the following implementation instead of the illusion

% filter(b, a, x)
% b : Coef. numerador
% a : Coef. denominador
% x : Señal
yecho = filter(h, 1, signal(:,1)); % Filtrando la señal de entrada

audioread('path_audio');








