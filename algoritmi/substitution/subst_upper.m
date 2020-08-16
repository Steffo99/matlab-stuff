function [x] = subst_upper(A, b)
    % SUBST_UPPER Solve a problem where A is lower triangular with the substitution algorithm.
    assert(istriu(A));
    
    [A, b] = simplify(A, b);
        
    for row = length(b):-1:1
        for col = length(b):-1:row+1
           multiplier = A(row, col);
           A(row, col) = A(row, col) - multiplier * A(row, row);
           b(row) = b(row) - multiplier * b(col);
        end
    end
    
    x = subst_diagonal(A, b);
end
