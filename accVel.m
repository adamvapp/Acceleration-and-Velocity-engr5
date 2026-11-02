% Acceleration and Velocity
% Create the function handle for the acceleration
acc = @(t) 7*t.*sin(5*t);
% Use a loop with t values ranging from 0 to 10 seconds with an increment
% of 0.02
count = 1;
for t = 0:0.02:10
    vel(count) = integral(acc,0,t);
    count = count+1;
end
t = 0:0.02:10;
% Plot the velocity vs time
plot(t,vel)
xlabel('Time(s)')
ylabel('Velocity(m/s)')
title('Plot of velocity vs time')
