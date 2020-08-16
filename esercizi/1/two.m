%% Scrivere un M-function file con le seguenti caratteristiche:

% - ha 3 parametri di input n,i,j;
% - ha un parametro di uscita P
function [P] = two(n, i, j)
%TWO Crea la matrice di permutazione che scambia la posizione I e la
%posizione J

% se i>n o j>n, allora assegna a P il valore -1;
if i > n || j > n
    P = -1;
% altrimenti, assegna a P la matrice identità di ordine n con la riga i e la riga j scambiate
else
    P = eye(n, n);
    tmp = P(i, :);
    P(i, :) = P(j, :);
    P(j, :) = tmp;
end

end

