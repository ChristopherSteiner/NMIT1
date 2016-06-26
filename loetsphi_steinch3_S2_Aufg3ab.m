startN =  6;
y = 6;
s = 1;
y2 = 6;
s2 = 1;
for i = 2:100
   startN(i) = startN(i-1)*2;   
   s(i) = sqrt(2-2*sqrt(1-((s(i-1).^2)/4)));
   y(i) = s(i) * startN(i);
   s2(i) = sqrt(s2(i-1).^2 /(2*(1+sqrt(1-(s2(i-1).^2/4)))));
   y2(i) = s2(i) * startN(i);
   
end
plot(startN, y, 'r',startN, y2,'b')

% a) Wir verdoppeln immer die n-Ecke dadurch wird die Zahl der Ecken sehr
% schnell sehr gross. Dies führt zur Auslöschung ausserdem werden im Plot
% die Eckanzahl linear ausgegeben was dazu führt, dass nur die letzten Paar
% Ecken sichtbar sind.
% b) Wir habe gesehen, dass man durch geschicktes Umformen von Gleichungen
% weniger Rundungen nötig sind, was zu keinen Ausreissern führt