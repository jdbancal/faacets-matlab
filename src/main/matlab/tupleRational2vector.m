function [vector denom] = tupleRational2vector(tuple2)
% function [vector denom] = tupleRational2vector(tuple2)
% 
% This function translates a tuple2 containing a vector of numerators and a
% denominator into a vector of doubles. If a second output is required, the
% denominator is not incorporated into the vector, but reproduced
% separately.
%
% Examples :
%  - tupleRational2vector(tup)
%  - [numerators denominator] = tupleRational2vector

% This file is part of faacets-matlab.
%
% Written on 19.9.2013 by J-D Bancal
% last modified 19.9.2013

if nargout == 1
    vector = double(javaMethod('_1', tuple2))'/double(javaMethod('_2', tuple2));
else
    vector = double(javaMethod('_1', tuple2))';
    denom = double(javaMethod('_2', tuple2));
end

end