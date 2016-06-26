for i = 1:1000
    A = rand(100, 100);
    b = rand(100, 1);
    A_fehler = A + rand(100, 100) ./ 10.^5;
    b_fehler = b + rand(100, 1) ./ 10.^5;
    [ x, x_fehler, dxmax, dxobserved ] = loetsphi_steinch3_S9_Aufg2( A, A_fehler, b, b_fehler );
    v_dxmax(i) = abs(dxmax);
    v_dxobserved(i) = abs(dxobserved);
end

semilogy(1:1000, v_dxmax, 'r', 1:1000, v_dxobserved, 'b', 1:1000, v_dxmax ./ v_dxobserved, 'g')
% Es scheint so, dass der maximale Fehler nie auch nur annähernd vorkommt.
% Von daher ist dxmax eine realistische obere Schranke, da wir wie bereits
% erwähnt, nie über diese Schranke hinauskommen.