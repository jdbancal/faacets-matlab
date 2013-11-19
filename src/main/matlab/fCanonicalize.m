function ineq5 = fCanonicalize(inequality, scenario, representation)
% function ineq5 = fCanonicalize(inequality, scenario, representation)
% 
% This function returns the provided the first lexicographic representative
% of an inequality, in the representation provided.
%
% In case the provided inequality is composite (or a lifting), the output
% is a tree of elementary inequalities in their first lexicographic form.
%
% Example:
%  - For CHSH : fCanonicalize([2 0 0 0 1 1 0 1 -1], {[2 2] [2 2]}, 'NCRepr')

% This file is part of faacets-matlab.
%
% Written on 17.9.2013 by J-D Bancal
% last modified 17.9.2013

% WARNING : The original bounds are not recovered at the end of the
% procedure for the moment...

% If several inequalities are provided, we treat each one independently
if size(inequality,1) > 1
    ineq5 = [];
    workbar(0);
    for i=1:size(inequality,1)
        disp([num2str(i),'/',num2str(size(inequality,1))]);tic;
        ineq5(i,:) = fCanonicalize(inequality(i,:), scenario, representation);toc;
        workbar(i/size(inequality,1));
    end
    return;
end
    

% First, we translate the input in faacet format:
finequality = table2qvector(inequality);
fscenario = fScenario(scenario);
frepresentation = fRepresentation(representation);

ineq = com.faacets.Bra(fscenario, frepresentation, finequality);

ineq2 = ineq.canonicalize;

ineq3 = javaMethod('_1', ineq2);

ineq4 = ineq3.as(frepresentation).coeffs.longCoefficients; % These are the coefficients

ineq5 = tupleRational2vector(ineq4); % the numerators / the denominator

ineq5 = ineq5/VectGcd(ineq5);
