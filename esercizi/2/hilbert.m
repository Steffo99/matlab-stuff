function [H] = hilbert(n)
%HILBERT Calcola la matrice di Hilbert di ordine N
H = zeros(n, n);

for x = 1:n
    for y = 1:n
        H(x, y) = 1 ./ (x+y-1);
    end
end
end
