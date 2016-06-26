A = diag(diag(ones(3000)*4000))+ones(3000);
x = [1:1:1500,1500:-1:1]';
b = A * x;
x0 = zeros(3000,1);
tol = 1e-4;

% Gauss Algebraisch
% tGauss = tic;
% [A_triangle,detA,x]  = loetsphi_steinch3_S7_Aufg2(A, b);
% toc(tGauss);
% Viel zu lange.

% Jacobi
tJacobi = tic;
[xn, n] = loetsphi_steinch3_S10_Aufg3a(A,b,x0,tol,'Jacobi');
toc(tJacobi);
%Elapsed time is 11.174642 seconds.

% Seidel
tSeidel = tic;
[xn, n] = loetsphi_steinch3_S10_Aufg3a(A,b,x0,tol,'Seidel');
toc(tSeidel);
%Elapsed time is 2.148323 seconds.