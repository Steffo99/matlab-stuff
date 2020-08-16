% Scrivere un M-script file che effettua le seguenti assegnazioni e operazioni:

%% cancella il contenuto del workspace;
clear;

%% legge un intero da tastiera (istruzione input) e lo assegna alla variabile n
n = input("Valore finale: ");

%% crea la seguente matrice [...] e la assegna alla variabile A;
A = [];
for i = 1:n
    A = [A; i, i+1, i+2];
end
