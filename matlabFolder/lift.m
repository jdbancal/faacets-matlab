function M = lift(ineq, scen1, repr, scen2)
% M = lift(ineq, scen1, repr, scen2)
%
% This function returns all possible ways that an inequality from a Bell
% scenario can be written in a larger scenario. Here, only one
% representative is given for each 
%
% Example:
%  - The following lifts the positivity from one to two parties:
%      lift([0 1 0], {[2 2]}, {[2 2] [2 2]},'NCRepr')

% This file is part of faacets-matlab.
%
% Written on 18.9.2013 by J-D Bancal
% last modified 18.9.2013

