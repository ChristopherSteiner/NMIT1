A=[4 -1 -5;-12 4 17;32 -10 -41]; 
b=[-5;19;-39]; 
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(A,b); 
assert(max(abs(x - A\b)) < eps*1000, 'A1 falsch berechnet') 

A=[2 7 3;-4 -10 0;12 34 9]; 
b=[25;-24;107]; 
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(A,b); 
assert(max(abs(x-A\b)) < eps*1000, 'A2 falsch berechnet') 

A=[-2 5 4;-14 38 22;6 -9 -27]; 
b=[1;40;75]; 
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(A,b); 
assert(max(abs(x - A\b)) < eps*1000, 'A3 falsch berechnet') 

A=[-1 2 3 2 5 4 3 -1;3 4 2 1 0 2 3 8;2 7 5 -1 2 1 3 5;3 1 2 6 -3 7 2 -2;5 2 0 8 7 6 1 3;-1 3 2 3 5 3 1 4;8 7 3 6 4 9 7 9;-3 14 -2 1 0 -2 10 5]; 
b=[-11;103;53;-20;95;78;131;-26]; 
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(A,b); 
assert(max(abs(x - A\b)) < eps*1000, 'A4 falsch berechnet') 