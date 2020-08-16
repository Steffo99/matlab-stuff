function [x] = subst_diagonal(A, b)
% SUBST_DIAGONAL Solve a problem where A is diagonal with the substitution algorithm.
    assert(isdiag(A));
    
    x = zeros(length(b), 1);
    
    for i = 1:length(b)
        x(i) = b(i) / A(i, i);
    end
end

