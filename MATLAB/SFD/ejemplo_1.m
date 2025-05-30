x = [1, 1, 0, 1, 1];
N = length(x);
X = zeros(1, N);
fs = 1;

for k = 0: N-1
    for n = 0: N - 3
        X(k+1) = X(k+1) + x(n+1)*exp(-j*2*pi*k*(n-2)/N);
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








