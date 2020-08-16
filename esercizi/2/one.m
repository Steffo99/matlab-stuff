% Scrivere un M-script file che effettua le seguenti assegnazioni e operazioni:

%% cancella il contenuto del workspace;
clear;

%% legge un intero n da tastiera (istruzione input) e lo assegna alla variabile n;
n = input("n: ");

%% crea la seguente matrice [...] e la assegna alla variabile A;
A = zeros(n, n);
for i = 1:n
    A(i, :) = i:n+i-1;
end

%% calcola la somma dei primi n numeri naturali e assegna il valore calcolato alla variabile s;
s = 0;
for i = 1:n
    s = s + i;
end

%% calcola la somma del quadrato dei primi n numeri naturali e lo assegna alla variabile s2;
s_two = 0;
for i = 1:n
    s_two = s_two + (i ^ 2);
end

%% calcola il valore n! e lo assegna alla variabile f;
f = 1;
for i = 1:n
    f = f * i;
end

%% stampa il contenuto di s e il numero n(n+1)/2;
s
n * (n+1) ./ 2

%% stampa il contenuto di s2 e il numero n(n+1)(2n+1)/6.
s_two
n * (n+1) * (2*n + 1) ./ 6