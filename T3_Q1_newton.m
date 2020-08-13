function y =T3_Q1_newton(fcn,deriv,x0,tol,N)

x=x0;
i=1;

true = fzero(fcn, 2.5);
output = zeros(1,2);

while abs(feval(fcn,x)/feval(deriv,x))>=tol&&i<N
    output(i, 1) = x;
    x = x-feval(fcn,x)/feval(deriv,x);
    
    abs_error = abs(x - true);
    output(i, 2) = abs_error;
    
    i = i+1;
end

fprintf("%26s%26s\n", 'x(i)', 'absolute error')
disp(output)