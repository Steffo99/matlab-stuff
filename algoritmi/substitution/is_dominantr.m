function [bool] = is_dominantr(A)
    %IS_DOMINANTR Check whether a matrix is dominant by row
    
    totals = sum(A, 2);
    for i = 1:length(A)
        if 2 * A(i, i) <= totals(i)
            bool = false;
            return;
        end
    end

    bool = true;
    return;
end

