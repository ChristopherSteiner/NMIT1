function [ x, x_fehler, dxmax, dxobserved ] = loetsphi_steinch3_S9_Aufg2( A, A_fehler, b, b_fehler )

x = linsolve(A, b);
x_fehler = linsolve(A_fehler, b_fehler);
dxmax = 0;

condA  = cond(A, inf);
A_part = norm(A - A_fehler, inf)/norm(A, inf);
if(condA  * A_part < 1)
    dxobserved = max(abs(x - x_fehler)) / max(abs(x));
else
    dxobserved = NaN;
end

if(max(b) ~= 0)
    dxmax = (condA / (1 - condA * A_part)) * (A_part + (norm(b-b_fehler, inf) / norm(b,inf)));
else
    dxmax = NaN;
end
    
end

