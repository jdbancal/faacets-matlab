% Example file showing possible usage of the faacets library.
% More examples soon available on the website http://www.faacets.com
%
% For more information about the working of the library, please
% refer to http://www.arxiv.org (paper in preparation).

% Authors : Denis Rosset, Jean-Daniel Bancal
%
% Written on 4.2.2014
% Last modified on 4.2.2014


disp('This example loads an inequality from a yaml file and displays it.')
disp(' ');
disp('Type ''enter'' to start');
pause
disp(' ');

% First, we initialize the interface, if needed,
cd ..
faacets_init;
cd examples

% Let us load a Bell inequality from a yaml file:
disp('We load inequality from file inequalities/i3322.yaml...');
ineq = Faacets.loadInequality([pwd '/../inequalities/i3322.yaml']);

% We can display the inequality coefficients in table format:
disp('Here are the coefficients of the loaded inequality in Collins-Gisin notation:')
disp(num2str(reshape(ineq.coeffs,4,4)))
disp(' ')

% We display some more information about this inequality:
disp(['This inequality is the ', char(ineq.names), ' inequality.'])
disp(['It is also often referred to as ', char(ineq.getShortName), '.'])
disp(' ');
disp('Here are some known bounds for this inequality:');
disp(' ');
disp(ineq.bounds)

