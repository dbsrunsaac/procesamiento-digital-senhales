clear, clc;
% a) Gráficar la señal x7[n] hasta n = 20
n = 0: 1: 20;
if n >= 0 
    x7 = (3/4).^n.*sin((pi/4).*n);
    disp(x7);
else
    x7 = 0;
    disp("Solo valido el primer termino");
end
plot(n, x7);
grid on

% b) Hallar y gráficar la FTD de la señal, truncando hasta n = 20

% b.1) Hallar la Transformada de Fourier Discreta
X7 = fft(x7);
disp("Transformada de Fourier Discreta");
% disp(X7);

% b.2) Gráficar la Transformada de Fourier Discreta

n = length(X7);
f = 0: n - 1;

stem(f, abs(X7));
xlabel('Frecuencia');
ylabel('Magnitud');
title('Transforma de Fourier Discreta n = 20');

% c) Calculo de la energía
syms n theta

% c.1) Transformada de Fourier Simbolica
F = fourier(x7, n, theta);

disp(F);

modulo = abs(F).^2;
energia = int(modulo, 0, pi);

disp("La energía de la señal es: ");
disp(double(energia));









