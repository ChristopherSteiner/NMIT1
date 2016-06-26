x = [1;-1;3];
b = [19;5;34];
a = [8 5 2; 5 9 1; 4 2 7];

n = 1;
iterations = 0;
while(iterations<n)
    
xold = x;
for i = 1:size(x)   
   x(i,1) = 1/a(i, i) * (b(i, 1) - (a(i,1:i-1) * x(1:i-1)) - (a(i,i+1:size(a,1))*xold(i+1:size(xold))));
end
 iterations = iterations+1;
 iterations
 x
end