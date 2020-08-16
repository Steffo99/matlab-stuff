function [bool] = is_dominant(A)
    %IS_DOMINANT Check whether a matrix is totally diagonally dominant
    bool = dominantr(A) && dominantc(A);
end

