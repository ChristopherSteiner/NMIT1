syms x1 x2;
f = [2*x1 + 4*x2; 4*x1 + 8*x2.^3];
j = jacobian(f)
% Vektor in ausführbare Funktionen umwandeln
f=matlabFunction(f,'vars',{[x1; x2]});
% Matrix in ausführbare Funktionen umwandeln
Df=matlabFunction(j,'vars',{[x1; x2]});

%Newtonverfahren
%Start Wert
x = [1.5;1.5]

delta = -Df(x)\f(x)
x = x+delta
delta = -Df(x)\f(x)
x = x+delta
delta = -Df(x)\f(x)
x = x+delta

%Vereinfachtes Newton (Jacobi immer mit Startvektor)
y = [1.5;1.5];
y0 = y;

Dfy0 = -Df(y0);
deltay =  Dfy0\f(y)
y = y+deltay
deltay = Dfy0\f(y)
y = y+deltay
delta = Dfy0\f(y)
y = y+delta