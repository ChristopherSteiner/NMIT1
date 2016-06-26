function [y]  = loetsphi_steinch3_S6_Aufg3(f, x0, x1, tol)
a = 0;
stopAfter = 100;

while (abs(x1- x0) > tol && stopAfter > 0)
    a = x0 - ((x1 - x0) / (f(x1) - f(x0))) * f(x0);
    x0 = x1;
    x1 = a;
    stopAfter = stopAfter - 1;
end
y = a;

% Beispiel Aufruf: 
% f = @(x) exp(x.^2)+ x.^-3-10
% loetsphi_steinch3_S6_Aufg3(f, -1, -1.2, 10^-4)

% Newton verfahren wäre ein wenig problematisch, da entweder ein weiterer 
% Parameter mit der abgeleiteten Funktion mitgegeben werden müsste oder wir
% müssten die Funktion ableiten können mit MatLab, was wir jedoch noch
% nicht können.