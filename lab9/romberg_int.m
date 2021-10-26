function inv = romberg_int(f,a,b,n)
h = (b - a) ./ (2.^(0:n-1));
inv(1,1) = (b - a) * (f(a) + f(b)) / 2;
for j = 2:n
    total = 0;
    for it = 1:2^(j-2)
        total = total + f(a + (2 * it - 1) * h(j));
    end
    inv(j,1) = inv(j-1,1) / 2 + h(j) * total;
    for k = 2:j
        inv(j,k) = (4^(k-1) * inv(j,k-1) - inv(j-1,k-1)) / (4^(k-1) - 1);
    end
end