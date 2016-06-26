function [ root, xint, n ] = Bisektion(func, a, b, tol)
%bla = @(x)cos(x).*sin(x);
%[root,xint,n] = Bisektion(bla,-1,1,1*10.^-15)

n = 0;
temp = 1;
% Wenn func(a) - func(b) = positiv dann ist prefix > 0 ansonsten < 0
prefix = sign(func(a)-func(b));

while(abs(a-b) > tol && n < 100 && func(temp) ~= 0)    
    n = n + 1;
    temp = (a+b)/2; % Temp ist der nächste Wert von a oder b
    tempRes = func(temp); % TempRes wird benötigt um zu Prüfen ob a oder b temp wird
    %prefix überprüft ob a oder b grösser ist, linke Seite vom or ist
    %a kleiner b, rechte Seite a grösser b
    if((tempRes > 0 && prefix < 0) || (tempRes < 0 && prefix > 0))
        b = temp;     
    else
        a = temp;    
    end    
    xint(n) = temp;
end 
root = temp;
end

