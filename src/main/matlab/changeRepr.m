function ineq3 = changeRepr(ineq, scen, repr1, repr2)
% ineq3 = changeRepr(ineq, scen, repr1, repr2)
%
% This function rewrites an inequality in a different representation
%
% Example:
%  - reprChangeMatrix('FRepr','NCRepr')

% This file is part of faacets-matlab.
%
% Written on 18.9.2013 by J-D Bancal
% last modified 18.9.2013

% First, we translate the input in faacet format:
fineq = table2qvector(ineq);
fscen = fScenario(scen);
frepr1 = fRepresentation(repr1);
frepr2 = fRepresentation(repr2);

ineq = com.faacets.Bra(fscen, frepr1, fineq);

ineq2 = ineq.as(fRepresentation('FRepr')).as(frepr2).coeffs.longCoefficients; % These are the coefficients (we pass through the 

ineq3 = tupleRational2vector(ineq2); % the numerators / the denominator

