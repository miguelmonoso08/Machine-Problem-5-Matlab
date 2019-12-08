n = 0:199;
x = input('Input x(n): ');
y = zeros(1,length(x));
for i = 0:199
    if i == 0
        y(i+1) = -1.5*x(i+1) + 2*x(i+2) - 0.5*x(i+3);
    elseif ((0 < i) && (i < 199))
        y(i+1) = 0.5*x(i+2) - 0.5*x(i);
    elseif i == 199
        y(i+1) = 1.5*x(i+1) - 2*x(i) + 0.5*x(i-1);
    end
end
plot(n,x,n,y)
legend('x(n)','y(n)')
xlim([0 199])

% x(n) = sin((3*pi*n)/100)