function [bool] = is_dominantc(A)
    %IS_DOMINANTC Check whether a matrix is dominant by column
    
    totals = sum(A, 1);
    for i = 1:length(A)
        if 2 * A(i, i) <= totals(i)
            bool = false;
            return;
        end
    end

    bool = true;
    return;
end

