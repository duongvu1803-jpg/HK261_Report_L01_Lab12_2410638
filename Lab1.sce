// ==========================================
// Ex 1.1: Vector and Matrix Operations
// ==========================================
x = 1:4;
z1 = x + 1;
disp("--- Ex 1.1 ---");
disp("Vector z1 (x + 1):");
disp(z1);

y = 5:8;
z2 = x .* y;
disp("Vector z2 (x .* y):");
disp(z2);

x_lin = linspace(0, %pi, 10);
z3 = sin(x_lin);
disp("Vector z3 (sin(x)):");
disp(z3);

// ==========================================
// Ex 1.2: Mo phong ADC & Xac dinh thong so
// ==========================================
disp("--- Ex 1.2: Phan tich ly thuyet ---");
F0 = 50;
Fs = 300;

f_digital = F0 / Fs; 
omega_digital = 2 * %pi * f_digital;
N = 1 / f_digital;

mprintf("Tin hieu roi rac: x(n) = 3*sin(100*pi*n/300) = 3*sin(pi*n/3)\n");
mprintf("Tan so chuan hoa f = F0 / Fs = 1/6 (la so huu ti)\n");
mprintf("=> Ket luan: x(n) la tin hieu tuan hoan.\n");
mprintf("Tan so goc: omega = pi/3 (rad)\n");
mprintf("Chu ky co ban: N = 6 (mau)\n\n");

T0 = 1 / F0;
t_max = 5 * T0;
t = linspace(0, t_max, 1000);
xa = 3 * sin(100 * %pi * t);

Ts = 1 / Fs;
n = 0:(5 * N);
xn = 3 * sin(omega_digital * n);

Delta = 0.1;
xq = Delta * floor(xn / Delta);

clf;

subplot(3, 1, 1);
plot(t, xa, "b");
xtitle("Analog Signal: x_a(t) = 3*sin(100*%pi*t) (5 chu ky)", "Thoi gian t (s)", "Bien do");
xgrid();

subplot(3, 1, 2);
plot2d3(n, xn);
plot(n, xn, "ro");
xtitle("Discrete-time Signal: x(n) (5 chu ky, N = 6 mau)", "Chi so mau n", "Bien do");
xgrid();

subplot(3, 1, 3);
plot2d3(n, xq);
plot(n, xq, "ms");
xtitle("Quantized Signal: x_q(n) voi Delta = 0.1 (Truncation)", "Chi so mau n", "Bien do");
xgrid();
