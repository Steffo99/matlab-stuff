function [bool] = is_square(A)
%IS_SQUARE Check whether a matrix is square or not
    a_size = size(A);
    bool = a_size(1) == a_size(2);
end

