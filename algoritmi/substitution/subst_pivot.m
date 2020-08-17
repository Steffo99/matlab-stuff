function [A, b] = subst_pivot(A, b)
    %SUBST_PIVOT Recursively pivot rows of a square matrix.
    size = length(b);
    
    if(size == 0)
        return;
    end
    
    [~, indexes] = max(A,[],1);
    index = indexes(1);
    
    % Swap the index and the first row
    A([1 index], :) = A([index 1], :);
    b([1 index]) = b([index 1]);
    
    % Recursively pivot
    [A(2:size, 2:size), b(2:size)] = subst_pivot(A(2:size, 2:size), b(2:size));    
end
