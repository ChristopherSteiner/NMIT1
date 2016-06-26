A = [ 3 -2; 1 6];
Afehl = [3.5 -2.5; 0.5 5.5];
b = [ -3; 8];
bfehl = [-2.1; 8.3 ];

norm(b-bfehl,inf)
norm(b, inf)