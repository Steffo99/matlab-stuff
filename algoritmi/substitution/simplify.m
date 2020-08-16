function [A, b] = simplify(A, b)
%SIMPLIFY Divide all rows by their pivot
    for i = 1:length(b)
       multiplier = A(i, i);
       b(i) = b(i) / multiplier;
       A(i, :) = A(i, :) / multiplier;  
    end
end

