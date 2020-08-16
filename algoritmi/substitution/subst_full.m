function [x] = subst_full(A, b)
    %SUBST_FULL Solve a problem with the substitution algorithm
    
    if isdiag(A)
        x = subst_diagonal(A, b);
    elseif istril(A)
        x = subst_lower(A, b);
    elseif istriu(A)
        x = subst_upper(A, b);
    elseif is_dominant(A)
        x = subst_domin(A, b);
    else
        x = subst_pivot(A, b);
    end
    
end

