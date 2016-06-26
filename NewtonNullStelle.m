function [xn1] = NewtonNullStelle(f, xn, tol)
stopAfter = 100;
xn1 = 1;
xtol = tol + 1;
dx = matlabFunction(diff(f));
f=matlabFunction(f);

while (xtol > tol && stopAfter > 0)
    xn1 = xn - (f(xn)/dx(xn))
    xtol = abs(xn1 - xn);
    xn = xn1;
    stopAfter = stopAfter - 1;
end

end

