function [r] = Cholesky(a)
r = zeros(size(a, 1), size(a, 2));
if(~isequal(transpose(a),a))
    error('Matrix nicht symetrisch');
end

for i = 1:size(a,1)
    S = a(i, i);
    for k = 1 : i - 1
        S = S - (r(k, i).^2);
    end
    if (S <= 0)
        error(strcat('Element an Position ', num2str(i), '/', num2str(i), ' nicht positiv definit'));
    end
    r(i, i) = sqrt(S);
    
    for j = i+1:size(a,1)
       aij = a(i, j);
       for k = 1:i-1
          aij = aij - r(k, i) * r(k, j); 
       end
       r(i, j) = 1./r(i, i) * aij;
    end
end 

