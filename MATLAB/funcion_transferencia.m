clc;
clear all;

% Definir la frecuencia angular discreta
omega = linspace(0, 50, 1000); % Puedes ajustar el rango según tus necesidades
b = 1;
T = 0.01;

% Definir las funciones de transferencia para H(s) y H(z)
H_s_modulo = b ./ sqrt(b.^2 + omega.^2);
H_s_fase = -atan(omega/b);  % Fase de H(s)

H_z_modulo = (b*T) ./ sqrt((1 - exp(-b*T) * cos(omega*T)).^2 + (exp(-b*T) * sin(omega*T)).^2);
H_z_fase = -angle(1 - exp(-b*T)*cos(omega*T) + 1i*exp(-b*T)*sin(omega*T));  % Fase de H(z)

% Graficar los módulos
figure;
subplot(2, 1, 1);
plot(omega, H_s_modulo, 'LineWidth', 2, 'DisplayName', '|H(s)|');
hold on;
plot(omega, H_z_modulo, 'LineWidth', 2, 'DisplayName', '|H(z)|');
hold off;

xlabel('Frecuencia Angular (rad/s)');
ylabel('Módulo');
title('Módulo de H(s) y H(z) vs Frecuencia Angular');
legend('show');
grid on;

% Graficar las fases
subplot(2, 1, 2);
plot(omega, rad2deg(H_s_fase), 'LineWidth', 2, 'DisplayName', 'Fase H(s)');
hold on;
plot(omega, rad2deg(H_z_fase), 'LineWidth', 2, 'DisplayName', 'Fase H(z)');
hold off;

xlabel('Frecuencia Angular (rad/s)');
ylabel('Fase (grados)');
title('Fase de H(s) y H(z) vs Frecuencia Angular');
legend('show');
grid on