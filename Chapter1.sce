// =========================================================================
// PROBLEM 1.1: CLASSIFICATION OF SIGNALS
// =========================================================================
disp("=======================================================");
disp("PROBLEM 1.1: PHAN LOAI TIN HIEU (CONSOLE REPORT)");
disp("=======================================================");
disp("(a) NYSE Stock Prices : 1-D, Multichannel, Discrete-time, Digital.");
disp("(b) Color Movie       : 3-D (x,y,t), 3-Channel (RGB), Continuous/Discrete-time, Analog/Digital.");
disp("(c) Car Wheel (Car)   : 1-D, Single-channel, Continuous-time, Analog.");
disp("(d) Car Wheel (Ground): 1-D, 3-Channel (X,Y,Z), Continuous-time, Analog.");
disp("(e) Child Growth      : 1-D, 2-Channel (Weight, Height), Discrete-time, Digital.");
disp(" ");

// Đồ thị minh họa 1.1(e)
months = 1:6;
weight = [7.2, 7.8, 8.3, 8.7, 9.1, 9.4];
height = [65,  67,  69,  71,  72,  74];

scf(1); clf();
subplot(2, 1, 1);
plot2d3(months, weight); plot(months, weight, "ro");
title("Problem 1.1(e) - Kenh 1: Can nang (kg)");
xlabel("Thang n"); ylabel("Can nang");
xgrid();

subplot(2, 1, 2);
plot2d3(months, height); plot(months, height, "bs");
title("Problem 1.1(e) - Kenh 2: Chieu cao (cm)");
xlabel("Thang n"); ylabel("Chieu cao");
xgrid();


// PROBLEM 1.3: PERIODICITY OF SIGNALS
disp("=======================================================");
disp("PROBLEM 1.3: KHAO SAT TINH TUAN HOAN VA CHU KY");
disp("=======================================================");
disp("(a) xa(t) = 3*cos(5*t + pi/6):");
disp("    -> Omega = 5 rad/s. Tin hieu lien tuc luon TUAN HOAN voi Tp = 2*pi/5 s.");
disp("(b) x(n) = 3*cos(5*n + pi/6):");
disp("    -> omega = 5 rad -> f = 5/(2*pi) la so vo ti => KHONG TUAN HOAN.");
disp("(c) x(n) = 2*exp(j*(n/6 - pi)):");
disp("    -> omega = 1/6 rad -> f = 1/(12*pi) la so vo ti => KHONG TUAN HOAN.");
disp("(d) x(n) = cos(n/8)*cos(pi*n/8):");
disp("    -> Tan so goc chua (1 +- pi)/8 -> f vo ti => KHONG TUAN HOAN.");
disp("(e) x(n) = cos(pi*n/2) - sin(pi*n/8) + 3*cos(pi*n/4 + pi/3):");
disp("    -> N1 = 4, N2 = 16, N3 = 8 -> Tat ca f deu huu ti.");
disp("    -> TUAN HOAN voi chu ky co so N = LCM(4, 16, 8) = 16 mau.");
disp(" ");
scf(2); clf();
n = 0:32;
// 1.3(a)
t_a = linspace(0, 4 * %pi / 5, 400);
xa = 3 * cos(5 * t_a + %pi / 6);
subplot(5, 1, 1);
plot(t_a, xa, "b");
title("1.3(a): xa(t) - TUAN HOAN (Tp = 2*pi/5 s)");
xlabel("t (s)"); ylabel("Bien do"); xgrid();
// 1.3(b)
xb = 3 * cos(5 * n + %pi / 6);
subplot(5, 1, 2);
plot2d3(n, xb); plot(n, xb, "ro");
title("1.3(b): xb(n) - KHONG TUAN HOAN");
xlabel("n"); ylabel("Bien do"); xgrid();
// 1.3(c)
xc = 2 * exp(%i * (n / 6 - %pi));
subplot(5, 1, 3);
plot2d3(n, real(xc)); plot(n, real(xc), "ms");
title("1.3(c): Re{xc(n)} - KHONG TUAN HOAN");
xlabel("n"); ylabel("Bien do"); xgrid();
// 1.3(d)
xd = cos(n / 8) .* cos(%pi * n / 8);
subplot(5, 1, 4);
plot2d3(n, xd); plot(n, xd, "kd");
title("1.3(d): xd(n) - KHONG TUAN HOAN");
xlabel("n"); ylabel("Bien do"); xgrid();
// 1.3(e)
xe = cos(%pi * n / 2) - sin(%pi * n / 8) + 3 * cos(%pi * n / 4 + %pi / 3);
subplot(5, 1, 5);
plot2d3(n, xe); plot(n, xe, "g*");
title("1.3(e): xe(n) - TUAN HOAN (N = 16 mau, hien thi 2 chu ky)");
xlabel("n"); ylabel("Bien do"); xgrid();


// =========================================================================
// PROBLEM 1.6: SAMPLING AND PERIODICITY PROPERTY
// =========================================================================
disp("=======================================================");
disp("PROBLEM 1.6: CHUNG MINH VA MO PHONG LAY MAU");
disp("=======================================================");
disp("(a) x(n) = xa(nT) = A*cos(2*pi*F0*n*T + theta) = A*cos(2*pi*(T/Tp)*n + theta)");
disp("    -> Tan so chuan hoa f = T / Tp.");
disp("    -> x(n) tuan hoan khi va chi khi f = k/N (la so huu ti).");
disp("    => Suy ra x(n) tuan hoan neu T/Tp = k/N (dpcm).");
disp(" ");
disp("(b) Chu ky mau cua x(n) la N mau. Khoang cach giua 2 mau la T giay.");
disp("    -> Chu ky co so theo giay: Tp_discrete = N * T = N * (k/N * Tp) = k * Tp (giay).");
disp(" ");
disp("(c) Y nghia: Chu ky cua chuoi roi rac bang dung k lan chu ky cua tin hieu goc.");
disp("    Dam bao sau dung k chu ky tuong tu, cac diem lay mau roi trung vi tri pha ban dau.");
disp(" ");

F0 = 50;
Tp = 1 / F0;
Fs = 300;
T  = 1 / Fs;
N  = 6;

t_cont = linspace(0, 3 * Tp, 600);
xa_t   = cos(2 * %pi * F0 * t_cont);

n_pts  = 0:(3 * N);
xn_pts = cos(2 * %pi * F0 * n_pts * T);

scf(3); clf();
plot(t_cont, xa_t, "b-");
plot2d3(n_pts * T, xn_pts);
plot(n_pts * T, xn_pts, "ro");
title("Problem 1.6: Lay mau voi T/Tp = 1/6 -> x(n) tuan hoan voi N = 6 mau");
xlabel("Thoi gian t (giay)"); ylabel("Bien do");
legend(["xa(t) Lien tuc", "x(n) Mau roi rac"]);
xgrid();
