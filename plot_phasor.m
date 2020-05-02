function plot_phasor(A, name)
    t = linspace(0, 2 * pi, 401);
    z = abs(A) * exp(complex(0, t));
    plot(z);
    hold on;
    t_2 = linspace(-abs(A)*1.2, abs(A)*1.2, 401);
    z_2 = complex(t_2, 0);
    plot(z_2, 'blue');
    hold on;
    z_3 = complex(0, t_2);
    plot(z_3, 'blue');
    hold on;
    t_3 = linspace(0, abs(A) * cos(angle(A)), 2);
    t_4 = t_3 * tan(angle(A));
    z_4 = complex(t_3, t_4);
    h = plot(z_4);
    label(h, name, 'location', 'east');
    axis equal;
    hold off;
end