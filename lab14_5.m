% RC Circuit Application
% Define some constants
RC = 0.2;
vi = 2;
va = 10;
% Use ode 45 to solve the differential equation
[t, V] = ode45(@(t,V) (va-V)/RC, [0 0.25],vi);
n = length(V);
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))
% Solve for the voltge after 0.5 seconds
[t, V] = ode45(@(t,V) (va-V)/RC, [0 0.5],vi);
n = length(V);
fprintf("The voltage after 0.5s is %.2f V.\n",V(n))
% Solve for the voltge after 1.0 seconds
[t, V] = ode45(@(t,V) (va-V)/RC, [0 1],vi);
n = length(V);
fprintf("The voltage after 1s is %.2f V.\n",V(n))
% Logical comparison
near8V = V>7.9 & V<8.1;
time8V = t(near8V);
fprintf("It will take %.2f seconds for the voltage to " + ...
    "reach 8V.\n",time8V);
plot(t,V)
ylim([0 10])
grid on
title("The Capacitor Voltage in an RC Circuit")
xlabel("Time(s)")
ylabel("Voltage (V)")