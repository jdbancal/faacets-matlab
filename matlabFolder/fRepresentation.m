function frepresentation = fRepresentation(representation)
% function frepresentation = fRepresentation(representation)
% 
% This function returns the representation in the format of faacets.
%
% Example:
%  - For the full probability representation : fRepresentation('FRepr')
%  - For the correlators representation : fRepresentation('NCRepr')
%  - For the Collins-Gisin representation : fRepresentation('NGRepr')

% This file is part of faacets-matlab.
%
% Written on 17.9.2013 by J-D Bancal
% last modified 17.9.2013

switch representation
    case 'FRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('FRepr');
    case 'FCRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('FCRepr');
    case 'NCRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('NCRepr');
    case 'FGRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('FGRepr');
    case 'NGRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('NGRepr');
    case 'SRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('SRepr');
    case 'QRepr'
        frepresentation = com.faacets.matlab.MatlabHelpers.repr('QRepr');
    otherwise
        disp('Error in fRepresentation: unknown representation');
        return;
end        

end