syms A B w;
f = [A*sin(0.2*w)+B*cos(0.2*w); A*sin(0.6*w)+B*cos(0.6*w); A*sin(1.3*w)+B*cos(1.3*w)];
j = jacobian(f)

% Vektor in ausführbare Funktionen umwandeln
f=matlabFunction(f,'vars',{[A; B; w]});
% Matrix in ausführbare Funktionen umwandeln
Df=matlabFunction(j,'vars',{[A; B; w]});

%Start Wert
x = [5.5;-2;10.2];

delta = -Df(x)\f(x)
x1 = x+delta
%Hier ergibt sich für A und B -> 0, w bleibt 10.2

delta = -Df(x1)\f(x1)
x2 = x1+delta

f4 = A * sin(4*w) + B * sin(4 * w);
f4 = matlabFunction(f4,'vars',{[A; B; w]});
%Resultat b
f4(x1)