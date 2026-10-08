// ==================== EXERCISE 6 ====================
clf();

n = -1:3;
x1 = [0, 0, 1, 3, -2]; 
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;

disp("--- Exercise 6 ---");
disp("Truc mau n:"); disp(n);
disp("Tin hieu y(n) = x1(n) + x2(n):"); disp(y);

subplot(3, 1, 1);
plot2d3(n, x1); plot(n, x1, "ro");
title("Tin hieu x1(n) tren truc thoi gian chung n = -1:3");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(3, 1, 2);
plot2d3(n, x2); plot(n, x2, "bs");
title("Tin hieu x2(n) tren truc thoi gian chung n = -1:3");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(3, 1, 3);
plot2d3(n, y); plot(n, y, "m^");
title("Tin hieu y(n) = x1(n) + x2(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

// ==================== EXERCISE 7 ====================
scf(1);

n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2;

disp("--- Exercise 7 ---");
disp("Tin hieu y(n) = x1(n) .* x2(n):"); disp(y);

subplot(3, 1, 1);
plot2d3(n, x1); plot(n, x1, "ro");
title("Tin hieu x1(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(3, 1, 2);
plot2d3(n, x2); plot(n, x2, "bs");
title("Tin hieu x2(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(3, 1, 3);
plot2d3(n, y); plot(n, y, "m^");
title("Tin hieu y(n) = x1(n) .* x2(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

// ==================== EXERCISE 8 ====================
nx = -2:1;
x  = [1, -2, 3, 6];
ny1 = -nx($:-1:1);
y1  = x($:-1:1);
disp("--- Exercise 8 ---");
disp("y1(n) voi n tu -1 den 2:"); disp(y1);

scf(2);
subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, "ro");
title("Tin hieu goc x(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(2, 1, 2);
plot2d3(ny1, y1); plot(ny1, y1, "bs");
title("Tin hieu y1(n) = x(-n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();
ny2 = nx - 3;
y2  = x;
disp("y2(n) voi n tu -5 den -2:"); disp(y2);
scf(3);
subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, "ro");
title("Tin hieu goc x(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();
subplot(2, 1, 2);
plot2d3(ny2, y2); plot(ny2, y2, "g^");
title("Tin hieu y2(n) = x(n+3)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();
ny3 = -nx($:-1:1) - 2;
y3  = 2 * x($:-1:1);
disp("y3(n) voi n tu -3 den 0:"); disp(y3);
scf(4);

subplot(2, 1, 1);
plot2d3(nx, x); plot(nx, x, "ro");
title("Tin hieu goc x(n)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();

subplot(2, 1, 2);
plot2d3(ny3, y3); plot(ny3, y3, "md");
title("Tin hieu y3(n) = 2*x(-n-2)");
xlabel("Chi so mau n"); ylabel("Bien do");
xgrid();
