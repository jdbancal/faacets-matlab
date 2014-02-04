% Example file showing possible usage of the faacets library.
% More examples soon available on the website http://www.faacets.com
%
% For more information about the working of the library, please
% refer to http://www.arxiv.org (paper in preparation).

% Authors : Denis Rosset, Jean-Daniel Bancal
%
% Written on 4.2.2014
% Last modified on 4.2.2014


disp('This file shows how to defining a Bell inequality, change its representation,');
disp('and canonicalize it with the help of the faacets library.')
disp(' ');
disp('Type ''enter'' to start');
pause
disp(' ');

% First, we initialize the interface, if needed.
cd ..
faacets_init;
cd examples

%% Here we define a Bell scenario with 2 parties, 2 settings, 2 outcomes
s = Faacets.scenario('{[2 2] [2 2]}');

% In this scenario we can now define the CHSH inequality
% (all inequalities are implicitely <= 0)
disp('Define the CHSH inequality:');
chsh = s.inequality('<A1 B1> + <A1 B2> + <A2 B1> - <A2 B2> - 2 <>')

% We write this expression in different ways:
disp('The CHSH inequality written using full probabilities:');
chshfp = chsh.as('Non-signaling Probabilities')

disp('The CHSH inequality in Collins-Gisin notation:');
chshng = chsh.as('Non-signaling Collins-Gisin')


%% An inequality can also be described by a list of coefficients.
% The order in which these coefficients are taken can be found out 
% through the 'terms' function:
disp('Order of the correlation coefficients:');
disp(cell(chsh.terms));
disp('Order of the full probability coefficients:');
disp(cell(chshfp.terms));
disp('Order of the probabilities in Collins-Gisin notation:');
disp(cell(chshng.terms));

% In one parametrization, the coefficients of the expression are 
% accessed through the 'coeffs' function:
disp('Coefficients for CHSH in full probability notation: ');
disp(num2str(chshfp.coeffs'));

% We can thus construct the same inequality directly from this list of 
% coefficients:
chsh2fp = s.inequality('NPRepr', [1 -1 1 -1 -1 1 -1 1 -1 1 1 -1 1 -1 -1 1]-1/2);

% and translate it back to correlator notation:
chsh2 = chsh2fp.as('NCRepr');

% This inequality is not the same as the one written previously:
disp('These two inequalities have different coefficients:');
disp(num2str(chsh.coeffs'));
disp(num2str(chsh2.coeffs'));

disp('But are equivalent since they have the same canonical form: ');
canonical1 = chsh.canonical;
canonical2 = chsh2.canonical;
disp(num2str(canonical1(1).coeffs'));
disp(num2str(canonical2(1).coeffs'));
disp(' ');
