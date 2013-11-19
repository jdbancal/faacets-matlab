function ineq3 = fChangeRepr(inequality, scenario, representation1, representation2)
% function ineq3 = fChangeRepr(inequality, scenario, representation1, representation2)
% 
% This function translates an inequality written in some representation
% into another one.
%
% Example:
%  - For CHSH : fChangeRepr([2 0 0 0 1 1 0 1 -1], {[2 2] [2 2]}, 'NCRepr', 'FRepr')

% This file is part of faacets-matlab.
%
% Written on 1.11.2013 by J-D Bancal
% last modified 1.11.2013

% First, we translate the input in faacet format:
finequality = table2qvector(inequality);
fscenario = fScenario(scenario);
frepresentation1 = fRepresentation(representation1);
frepresentation2 = fRepresentation(representation2);

ineq = com.faacets.Ket(fscenario, frepresentation1, finequality);

ineq2 = ineq.as(frepresentation2).coeffs.longCoefficients; % These are the coefficients

ineq3 = tupleRational2vector(ineq2); % the numerators / the denominator
