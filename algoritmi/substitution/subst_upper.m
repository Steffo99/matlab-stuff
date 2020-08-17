function [x] = subst_upper(A, b)
    % SUBST_UPPER Solve a problem where A is lower triangular with the substitution algorithm.
    assert(istriu(A), "A is not upper triangular.");
    assert(is_square(A), "A is not square.");
    assert(length(A) == length(b), "A and B have different sizes.");
    size = length(b);
    
    [A, b] = simplify(A, b);
    
    for row = size:-1:1
        for col = size:-1:row+1
           b(row) = b(row) - A(row, col) * b(col);
           A(row, col) = 0;
        end
    end
    
    x = b;
end
