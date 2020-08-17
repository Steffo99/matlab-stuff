function [x] = subst_lower(A, b)
    % SUBST_LOWER Solve a problem where A is lower triangular with the substitution algorithm.
    assert(istril(A), "A is not lower triangular.");
    assert(is_square(A), "A is not square.");
    assert(length(A) == length(b), "A and B have different sizes.");
    size = length(b);
    
    [A, b] = simplify(A, b);
        
    for row = 1:size        
        for col = 1:row-1
           b(row) = b(row) - A(row, col) * b(col);
           A(row, col) = 0;
        end
    end
    
    x = b;
end
