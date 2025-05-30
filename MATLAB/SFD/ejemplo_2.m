
x(1) = 1;
for i = 1 : 100
    if (i <= 10)
        x(i) = 1;
    else
        x(i) = 0;
    end
end
disp(x);

N = length(x);
X = zeros(1, N);

% Determinar una señal periodica

fs = 1;

for k = 0: N-1
    for n = 0: N - 3
        X(k+1) = X(k+1) + x(n+1)*exp(-j*2*pi*k*(n)/N);
    end
end


X = X/N;
modulo = abs(X);
fase_rad = angle(X);
fase_grados = rad2deg(fase_rad);

f = (0:N-1)*(fs/N);

figure;

subplot(2, 1, 1);
stem(f, modulo);
grid on

subplot(2, 1, 2);
stem(f, fase_grados);
grid on








