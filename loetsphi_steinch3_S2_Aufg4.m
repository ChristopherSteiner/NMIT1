n = 1;
b = 2;
steps = 10;
for i = 1:steps
   n = n/10+1;
end

for i = 1:steps
   n = (n-1)*10;
end

% Wir vermuten die Berechnung beruht auf einer Binär Gleitkommazahl, weil
% die Auslöschung zu gering ist bei steps = 11.