% faacets_init
%
% This function load the faacets library into matlab.
% The internal memory of faacets can be re-initialized
% by calling "clear java; faacets_init;"
%
% Usage : faacets_init

% Authors : Denis Rosset, Jean-Daniel Bancal
%
% Written on 4.2.2014
% Last modified on 4.2.2014


global faacets_loaded;
if (~exist('faacets_loaded')) || (~isequal(faacets_loaded,1))
    % look for all Faacets releases in the current directory
    % and load the most recent
    jarfiles = dir('Faacets-assembly*.jar');
    jarnames = sort({jarfiles.name});
    javaaddpath(jarnames(length(jarnames)));
    import com.faacets.*;
    faacets_loaded = 1;
end
