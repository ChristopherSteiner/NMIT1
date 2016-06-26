A = [19.9 29.9 9.9; 9.9 16.9 5.9; 1.9 2.9 1.9];
b = [5820; 3400; 936];

x = [ 22; 88; 264 ];

[A_triangle,detA,x_Fehler]  = loetsphi_steinch3_S7_Aufg2(A, b);
x - x_Fehler

131.5532/264