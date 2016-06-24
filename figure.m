clear all; clc;
x = -5 : 0.1 : 5;
f_x = normpdf(x, 0, 1.45);
subplot(2, 2, 4);
plot(x, f_x);
hold on;
a1 = 1.03;
a2 = 1.2;

y = 1 ./ (1 + exp(- a1 * x));
y2 = 1 ./ (1 + exp(- ( a2* x - 1 ) ));
y3 = 1 ./ (1 + exp(- ( a2* x + 1 ) ));
subplot(2, 2, 2);
plot(x, y);
hold on;

subplot(2, 2, 2);
plot(x, y2);
hold on;

subplot(2, 2, 2);
plot(x, y3);
hold on;

y_p = y .* ( 1 - y );
y_p2 = a2 * y2 .* ( 1 - y2 );
y_p3 = a2 * y3 .* ( 1 - y3 );
% subplot(2, 2, 3);
% plot(x, y_p);

f_y = f_x ./ abs(y_p);
subplot(2, 2, 1);
plot(y, f_y);
hold on ;

f_y2 = f_x ./ abs(y_p2);
subplot(2, 2, 1);
plot(y, f_y2);

f_y3 = f_x ./ abs(y_p3);
subplot(2, 2, 1);
plot(y, f_y3);

hold off;
