%% Da riga di comando, o in un M-script file, definire la matrice [...] assegnandola alla variabile A. 
A = [1,1,1,1; 2,2,2,2; 3,3,3,3; 4,4,4,4];

%% In seguito, assegnare  alla  variabile P l'output della funzione definita nell'esercizio precedente, chiamata con i parametri 4,1,4;
P = two(4, 1, 4);

%% costruire la matrice B calcolando il prodotto PA;
B = P * A;

%% costruire la matrice C calcolando il prodotto tra la trasposta della matrice A e P (in questo ordine);
C = (A') * P;

%% visualizzare le matrici B e C (utilizzando l’eco delle istruzioni senza “;”).
B
C

%% Quale è stato l'effetto della moltiplicazione per la matrice P, a sinistra, sulla matrice A?
% Si sono scambiate le righe con indice 1 e 4.

%% Quale è stato l’effetto della moltiplicazione per la matrice P, a destra, sulla trasposta di A?
% Si sono scambiate le colonne della trasposta con indice 1 e 4.