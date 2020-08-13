function y =T3_Q1_secant(fcn,x0,x1,tol,N)

x(1) = x0;
x(2) = x1;
i=2;

output = zeros(1,2);

actual_root = fzero(fcn, 2.5);

while abs(x(i) - x(i-1))>=tol&&i<N
    numerator = (x(i) - x(i-1)) * feval(fcn,x(i));
    denominator = feval(fcn,x(i)) - feval(fcn, x(i-1));
    x(i+1) = x(i) - numerator / denominator;
    
    % calculate absolute error
    abs_error = abs(x(i)-actual_root);
    
    output(i-1, 1) = x(i);
    output(i-1, 2) = abs_error;
    i = i+1;
end

%output
fprintf("%26s%26s\n", 'x(i)', 'absolute error')
disp(output)
