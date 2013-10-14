function qvector = table2qvector(table)
% function qvector = table2qvector(table)
% 
% This function returns a list of qvectors for every table of numbers
%
% Examples :
%  - table2qvector([1 2 3/4])
%  - table2qvector([1 2; 3 4])

% This file is part of faacets-matlab.
%
% Written on 17.9.2013 by J-D Bancal
% last modified 17.9.2013

if length(size(table)) > 2
    disp('Error in table2qvector : invalid input.');
    return;
end

for i = 1:size(table,1)
    [num den] = rat(table(i,:));
    denominator = VectLcm(den);
    if size(table,1) == 1
        qvector = com.faacets.matlab.MatlabHelpers.immutableQVector(num./den*denominator, denominator);
    else % If there are several lines in table, we build a vector
        qvector(i) = com.faacets.matlab.MatlabHelpers.immutableQVector(num./den*denominator, denominator);
    end
end


end