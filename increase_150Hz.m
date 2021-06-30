function A_rot = increase_150Hz(A)
    root = roots(A);
    disp(root);
    root_rot = zeros(10:1);
    k = 1;
    while k < 11
        if(abs(imag(root(k))) < 1e-10)
            root_rot(k) = root(k);
            k = k + 1;
            continue;
        end
        radius = abs(root(k));
        theta = abs(angle(root(k)));
        theta_rot = theta + (150 / 8000) * 2 * pi;
        root_rot_tmp_pos = radius * exp(1i * theta_rot);
        root_rot(k) = root_rot_tmp_pos;
        root_rot(k+1) = conj(root_rot_tmp_pos);
        k = k + 2;
    end
    A_rot = poly(root_rot);
    disp(root_rot);
end