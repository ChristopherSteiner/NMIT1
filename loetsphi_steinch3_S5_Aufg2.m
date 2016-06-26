a = 0:4;
k1(1) = 0.1;
k2(1) = 0.1;
k3(1) = 0.1;
k4(1) = 0.1;
k5(1) = 0.1;

for i = 2:100
    k1(i) = a(1) * k1(i-1) * ( 1 - k1(i-1));
    k2(i) = a(2) * k2(i-1) * ( 1 - k2(i-1));
    k3(i) = a(3) * k3(i-1) * ( 1 - k3(i-1));
    k4(i) = a(4) * k4(i-1) * ( 1 - k4(i-1));
    k5(i) = a(5) * k5(i-1) * ( 1 - k5(i-1));
end


plot(1:100, k1, 'r', 1:100, k2, 'b', 1:100, k3, 'g', 1:100, k4, 'y', 1:100, k5, 'm')
k2
% a)
% a = 0, anziehend
% a = 1, anziehend
% a = 2, anziehend
% a = 3, anziehend
% a = 4, abstossend

%b) 
% Der Fixpunkt ist die Anzahl relativ erkrankter Kinder zum Zeitpunkt i

% c)
% a = k(i+1) / (k(i) * ( 1 - k(i)))
% Dadurcht lässt sich mit zwei Fixpunkten die Infektionsrate a berechnen