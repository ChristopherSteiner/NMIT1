% 3a)
a = [0 0 0 1; 8 4 2 1; 729 81 9 1; 2197 169 13 1];
b = [150; 104; 172; 152];
[A_triangle,detA,x] = loetsphi_steinch3_S7_Aufg2(a, b);

pol = @(t) x(1) * t.^3 + x(2) * t.^2 + x(3) * t + x(4);

fplot(pol,[0, 15], 'r');
grid on;
set(gca, 'XTick', 1:15);
set(gca, 'XTickLabel', 1998:2012);

% 3b)
year2003 = pol(6)
year2004 = pol(7)

% 3c)
x2 = [0 2 9 13];
y2 = [150 104 172  152];
p = polyfit(x2,y2, 3);
pol2 = @(t) p(1) * t.^3 + p(2) * t.^2 + p(3) * t + p(4);
fplot(pol2,[0, 15], 'g');
grid on;
set(gca, 'XTick', 1:15);
set(gca, 'XTickLabel', 1998:2012);

% Differenz der verschiedenen Werte, da man mit fplot nur eine Funktion
% plotten kann. Man sieht aber das der Unterschied der Werte sich um 10^-13
% bewegt.
diff3 = abs(x(1) - p(1))
diff2 = abs(x(2) - p(2))
diff1 = abs(x(3) - p(3))
diff0 = abs(x(4) - p(4))

