function [y,value,abs_err,rel_err]  = loetsphi_steinch3_S3_Aufg3(x,B,nmax)
% Calculates an number x to the given base B with a precision of nmax.
% We assume that length fix(x) is reasonable, which means the length
% of fix(x) is max the amount of mantissa in matlab. 
% Sample call:
% [y,value,abs_err,rel_err] = loetsphi_steinch3_S3_Aufg3(1006.687,2,13)

pre = fix(x);
suf = x - pre;
signY = '';
value = 0;

if sign(x) > 0
    signY = '+';
else
    signY = '-';
end

preY = '';
sufY = '';

while(pre > B)
    preY = strcat(preY, num2str(mod(pre, B)));
    pre = fix(pre / B);
end
%add rest, and reverse / flip string order
preY = fliplr(strcat(preY, num2str(pre)));

for i = 1:nmax
   suf = suf * B;
   sufY = strcat(sufY, num2str(fix(suf)));   
   value = value + (fix(suf))* B.^(-i);
   suf = suf - fix(suf);
end

value = fix(x) + value; 
y = strcat(signY, preY, '.', sufY);
abs_err = abs(value - x);
if(x == 0)
    rel_err = 0;
else
    rel_err = abs_err / x;
end
end

