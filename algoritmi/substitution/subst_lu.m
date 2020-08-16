function [L, U] = subst_lu(A)
    %SUBST_LU Build the L and U matrixes for the substitution algorithm.    
    %% Build L
    L = zeros(length(A));
    for row = 1:length(A)
        L(row, row) = 1;
        for col = 1:row-1
            L(row, col) = A(row, col) ./ A(row, row);
        end
    end
    
    %% Build U
    U = zeros(length(A));
    for row = 1:length(A)
        for col = row:length(A)
            U(row, col) = A(row, col);
        end
    end
end
