%Jacobi 
jMat = [4 -1 1; -2 5 1; 1 -2 5];
jB = [5; 11; 12;];
jx0 = [0; 0; 0;];
[xn, n] = loetsphi_steinch3_S10_Aufg3a(jMat,jB,jx0,1*10^-4,'Seidel')
[xn1,n] = linSolveSeidel(jMat,jB,jx0,1*10^-4,20)
