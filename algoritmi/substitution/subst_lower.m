function [x] = subst_lower(A, b)
    % SUBST_LOWER Solve a problem where A is lower triangular with the substitution algorithm.
    assert(istril(A));
    
    [A, b] = simplify(A, b);
        
    for row = 1:length(b)        
        for col = 1:row-1
           multiplier = A(row, col);
           A(row, col) = A(row, col) - multiplier * A(row, row);
           b(row) = b(row) - multiplier * b(col);
        end
    end
    
    x = subst_diagonal(A, b);
end
