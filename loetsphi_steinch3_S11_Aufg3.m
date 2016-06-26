F1 = @(x,y) (x.^2./186.^2) - (y.^2./(300.^2-186.^2)) - 1;
F2 = @(x,y) (y-500).^2/279.^2 - (x-300).^2/(500.^2-279.^2) - 1;

% Aufgabe 3a
ezplot(F1, [-2500, 2500])
hold on
grid on
ezplot(F2, [-2500, 2500])
% Nullstellen: ~[-1500, 1500],~[-400, 0], ~[200, 0], ~[900, 1000]

% Aufgabe 3b
syms x y
nullStellen = [-1500, -400, 200, 900; 1500, 0, 0, 1000];
jac = jacobian([F1, (y-500).^2/279.^2 - (x-300).^2/(500.^2-279.^2) - 1], [x, y]);

for i = 1:4
   xn = nullStellen(:,i);
   delta = 1;
   while(norm(delta,2)>10^-5)
   %calculatedJac = subs(jac, [x y], [xn(1) xn(2)]);
       calculatedJac = matlabFunction(jac, 'vars', {[x;y]});
       calculatedF = [F1(xn(1), xn(2)); F2(xn(1), xn(2))];
       delta = calculatedJac([xn(1); xn(2)])\-calculatedF;
       xn = delta + xn;
   end
   xn
   %delta
end
% (nullstelle 1) xn =
% 
%    1.0e+03 *
% 
%    -1.2733
%     1.5941
% 
% 
% (nullstelle 2) xn =
% 
%  -193.2946
%    66.5649
% 
% 
% (nullstelle 3) xn =
% 
%   254.2211
%   219.3070
% 
% 
% (nullstelle 4) xn =
% 
%   740.3288
%   906.8259
