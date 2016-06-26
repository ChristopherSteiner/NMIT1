function [A_triangle,detA,x]  = loetsphi_steinch3_S7_Aufg2(A, b)
x = 0;
detA = 1;
rows = size(A, 1);
amountOfRowChanges = 0;
% b Vektor anhängen an A Matrix
A = cat(2, A, b);
for i = 1:rows
    % Falls nötig durch Zeilenvertauschung Matrix in richtige Form bringen
    for i2 = i:rows
        if A(i2, i) ~= 0
            break;
        end
    end     
    if A(i2, i) == 0
        % Abbruch wenn keine reguläre Matrix möglich
        error('Irreguläre Matrix');
    end  
          
    A([i i2],:) = A([i2 i],:);
    if(i ~= i2)
        amountOfRowChanges = amountOfRowChanges + 1;
    end
    
    for j = i+1:rows       
       A(j,:) = A(j,:) - (A(j,i)/A(i,i))*A(i,:);
    end
    detA = detA * A(i, i);    
end

% A_triangle zurück
A_triangle = A;

for i = rows:-1:1    
    for j = i-1:-1:1       
       A(j,:) = A(j,:) - (A(j,i)/A(i,i))*A(i,:);
    end  
    x(i, 1) = A(i, rows+1) / A(i,i);
end

if(mod(amountOfRowChanges, 2) == 1)
    detA  = detA * -1;
end
end

