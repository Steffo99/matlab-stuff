function [x] = subst_domin(A, b)
    %SUBST_DOMIN Solve a problem where A is diagonally dominant with the
    %substitution algorithm
    %assert(is_dominant(A), "Matrix isn't diagonally dominant.");    
    
    [L, U] = subst_lu(A);
    
    y = subst_upper(U, b);
    x = subst_lower(L, y);
end
