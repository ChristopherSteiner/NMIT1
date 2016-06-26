function [xn,n] = linSolveSeidel(A,b,x0,tol,nmax)

m = size(A,1);
xn = 2*tol*ones(size(x0));
n = 1;

while norm(xn-x0,inf) >= tol && n < nmax
    x0 = xn;
    for i=1:m
      %  xn(i) = 1/A(i,i)*(b(i) - A(i,1:i-1)*x0(1:i-1) - A(i,i+1:m)*x0(i+1:m));
        xn(i) = 1/A(i, i) * (b(i, 1) - (A(i,1:i-1) * xn(1:i-1)) - (A(i,i+1:size(A,1))*x0(i+1:size(x0,1))));
    end
    n = n+1;
end
