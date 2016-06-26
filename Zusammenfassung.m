%Maschinenzahlen
%Dez in anderen Basis umrechnen auf n (13) stellen genau nach dem Komma
loetsphi_steinch3_S3_Aufg3(1006.687,2,13)

% Numerische Lösung von Nullstellenproblemen

% Bisektionsverfahren
bisektionFunc = @(x) x.^2-3;
[root,xint,nBi] = Bisektion(bisektionFunc,0,5,1*10.^-15);
root

% Newton
syms xNew;
fNew = xNew.^2-2;
NewtonNullStelle(fNew,2,10^-4)

% Sekantenverfahren
fSek = @(x) exp(x.^2)+ x.^-3-10;
loetsphi_steinch3_S6_Aufg3(fSek, -1, -1.2, 10^-4)

% Lösen von linearen Gleichungssystemen

% Vektor
vec = [1; 2; 3;];

% Matrix
mat = [ 1 2 3; 5 5 6; 7 8 9 ];

% Matrix Transpoinieren
matT = transpose(mat)

% Gauss
AGauss = [ 20 10 0; 50 30 20; 200 150 100;];
bGauss = [ 150; 470; 2150];

loetsphi_steinch3_S7_Aufg2(AGauss, bGauss)

% Dreiecksmatrix / Gauss / Determinante
% loetsphi_steinch3_S7_Aufg2(A, b)
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(mat, vec)

% Lösen von Gleichung mit L, R, A, b und P, Matrix auf die andere Seite
% bringen Ax = b -> x = A\b;
L = [1 0 0; 1 1 0; -(1/4) -(3/8) 1];
R = [-4 5 2; 0 2 2; 0 0 9/4];
P = [0 1 0; 0 0 1; 1 0 0];
b = [1/4; 2; 3];
y = L \ (P * b)
x = R \ y

%LR Zerlegung
AZerlegung=[0.8 2.2 3.6; 2.0 3.0 4.0; 1.2 2.0 5.8]; 

[L_z, R_z, P_z] = lu(AZerlegung);

% Cholesky
chMat = [ 1 2 3 ; 2 5 7; 3 7 26; ]
[r] = Cholesky(chMat)

% Norm einer Matrix 
nVec = [1; 2; 3;];
nMat = [1 2 3; 3 4 6; 4 6 3;];
norm(nVec, 1)
norm(nVec, 2)
norm(nVec, inf)
norm(nMat, 1)
norm(nMat, inf)

%Jacobi 
jMat = [4 -1 1; -2 5 1; 1 -2 5];
jB = [5; 11; 12;];
jx0 = [0; 0; 0;];
[xn, n] = loetsphi_steinch3_S10_Aufg3a(jMat,jB,jx0,1*10^-4,'Jacobi')

%Ableitung
syms diffx
f = sin(5*diffx);
diff(f)

%partielle Ableitung
syms diff2x
syms diff2y
f = diff2x.^2*diff2y.^4+exp(diff2x)*cos(diff2y)+10*diff2x-2*diff2y.^3+3;
diff(f, diff2x)
diff(f, diff2y)

%Jacobi Matrix
syms k1 k2 k3
f = [k1*exp(k2)+k3-10; k1*exp(k2*2)+2*k3-12; k1*exp(3*k2)+3*k3-15];
Df = jacobian(f);

%Newton für nicht lineare Gl System -> Siehe Skript NichtLinearNewton