% Teilaufgabe a
% func = @(x) x.^2-2;
% [root,xint,n] = Bisektion(func,0,2,1*10.^-15);
% [root2,xint2,n2] = Bisektion(func,0,2,1*10.^-16);
% 
% 
% semilogy(1:n2, abs(xint2-sqrt(2)), 'r', 1:n, abs(xint-sqrt(2)), 'b');
% hold on
% grid
% legend('f(x) toleranz 10^-15', 'f(x) toleranz 10^-16');

%Bei 10^-16 sind wir unter der Maschinengenauigkeit dadurch zieht erst
%unser Abbruchkriterium nach 100 durchläufen. Durch das Runden benutzt er
%nämlich immer wieder dieselben Werte zum Annähern.

% Teilaufgabe b
i = 1;
while(i <= 20)
    [root,xint,n] = Bisektion(func,0,2,1*10.^-i);
    res(i) = n;
    i = i + 1;
end

semilogx(10.^-(1:20), res, 'b');

% Man sieht das eine höhere Toleranz, einm bessere Ergebnis erzeugt, aber nur bis
% Maschinengenauigkeit Epsilon