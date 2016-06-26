syms x;

f = x.^5 - 6*x.^4 - 30*x.^3+110*x.^2+29*x-105;


tol = 10.^-2;
xn = 4;
xn1 = 1;
xtol = tol + 1;
resNewton(1) = xn;
counter = 2;
df = matlabFunction(diff(f));
f = matlabFunction(f);

fplot(f, [-1,5]);
%Newton
while (xtol > tol)
    xn1 = xn - (f(xn)/df(xn));
    xtol = abs(xn1 - xn);
    xn = xn1;
    resNewton(counter) = xn;
    counter = counter + 1;
end
%Resultat der Newton Iterationen, das letze ist die Nullstelle
resNewton
a = 0.6;
b = 1.4;
prefix = sign(f(a)-f(b));
n = 0;
resultBisketion(1) = 1;
temp = 1;
while(abs(a-b) > tol && n < 100 && f(temp) ~= 0)    
    n = n + 1;
    temp = (a+b)/2;
    tempRes = f(temp); 
    if((tempRes > 0 && prefix < 0) || (tempRes < 0 && prefix > 0))
        b = temp;     
    else
        a = temp;    
    end    
    resultBisketion(n) = temp;
end 
%Resultat der Bisketion Iterationen ist die Nullstelle
resultBisketion
