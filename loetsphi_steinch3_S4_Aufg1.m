x = 0:0.1:100;
% f = 5 ./ ((2*x.^2).^(1./3));
% 
% loglog(x, f, 'b');
% hold on
% grid
% legend('f(x)');

% g = 10.^5*(2*exp(1)).^(x./100);
% 
% semilogy(x, g, 'b');
% hold on
% grid
% legend('g(x)');

h = ((10.^(2*x))./(2.^(5*x))).^2;

semilogy(x, h, 'b');
hold on
grid
legend('h(x)');

