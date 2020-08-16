function [bool] = is_dominant(A)
    %IS_DOMINANT Check whether a matrix is totally diagonally dominant
    bool = is_dominantr(A) && is_dominantc(A);
end

