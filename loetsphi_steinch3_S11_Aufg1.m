[X,Y] = meshgrid(0:1:100, 0:pi/180:pi/2);
Z = X.^2.*sin(2.*Y) ./ 9.81;
%meshc(Z)
%contour((100-X),Y,Z)
colorbar
surface(Z)

% W ist am grössten bei alpha = 45°
% da das Verhältnis der Vorwärts- und Aufwärtsbewegung dann optimial ist


