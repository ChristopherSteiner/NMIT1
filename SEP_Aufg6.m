x0 = [0; 0; 0];
rS = 1;
rJ = 1;
for t = 1:40
    A = [30 10 5; 10 40 20; 5 20 t];
    b = [t; 3*t; 5*t];
    [xnS, nS] = linSolveSeidel(A,b,x0,10^-6,300);
    [xnJ, nJ] = linSolveJacobi(A,b,x0,10^-6,300);
    
    rS(t) = nS;
    rJ(t) = nJ;    
end
%Plot zeigt das zu beginn beide Verfahren nicht sinvoll konvergieren,
%Seidel konvergiert vor Jacobi
plot(1:40, rS, 'r', 1:40, rJ, 'b');

r = 40;
konvS = 40;
konvJ = 40;
while r > 0 
    if(rS(r) < 300)
        konvS = r;
    end
    if(rJ(r) < 300)
        konvJ = r;
    end
    r = r -1;
end
%Seidel konvergiert bei a = 11
konvS
%Jacobi bei a = 16
konvJ