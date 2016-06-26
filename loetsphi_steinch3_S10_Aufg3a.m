function [xn, n] = loetsphi_steinch3_S10_Aufg3a(A,b,x0,tol,opt)
    n = 0;
    x = x0;        
    xold = (2 * tol * ones(size(x))) + x0;
    if strcmp(opt, 'Seidel')
        %Gauss Seidel
        while(norm(x-xold,inf)>tol)    
        xold = x;
            for i = 1:size(x,1)   
               x(i,1) = 1/A(i, i) * (b(i, 1) - (A(i,1:i-1) * x(1:i-1)) - (A(i,i+1:size(A,1))*xold(i+1:size(xold,1))));
            end
            n = n + 1;
        end
    else
        %Jacobi        
        while(norm(x-xold,inf)>tol)    
        xold = x;
            for i = 1:size(x,1)   
               x(i,1) = 1/A(i, i) * (b(i, 1) - (A(i,1:i-1) * xold(1:i-1)) - (A(i,i+1:size(A,1))*xold(i+1:size(xold,1))));
            end
            n = n + 1;
        end
    end   
    xn = x;
end

