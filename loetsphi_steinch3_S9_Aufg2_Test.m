A = [20 30 10; 10 17 6; 2 3 2];
b = [5720; 3300; 836];
A_fehler = [19.9 29.9 9.9; 9.9 16.9 5.9; 1.9 2.9 1.9];
b_fehler = [5820; 3400; 936];

[ x, x_fehler, dxmax, dxobserved ] = loetsphi_steinch3_S9_Aufg2( A, A_fehler, b, b_fehler );
x
x_fehler
dxobserved
dxmax
