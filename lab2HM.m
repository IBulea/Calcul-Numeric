syms x y
for n = [0, 1, 2, 3, 4]
  fplot(chebyshevU(n, x))
  hold on
end

hold off

axis([-1.5, 1.5, -2, 2])
grid on
ylabel('U_n(x)')

legend('U_0(x)', 'U_1(x)', 'U_2(x)', 'U_3(x)', 'U_4(x)', 'Location', 'Best')
title('Chebyshev polynomials of the second kind')