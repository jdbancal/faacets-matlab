% Example file showing possible usage of the faacets library.
% More examples soon available on the website http://www.faacets.com
%
% For more information about the working of the library, please
% refer to http://www.arxiv.org (paper in preparation).

% Authors : Denis Rosset, Jean-Daniel Bancal
%
% Written on 4.2.2014
% Last modified on 4.2.2014


disp('This example defines an inequality with the faacets library and');
disp('saves it into a yaml file.')
disp(' ');
disp('Type ''enter'' to start');
pause
disp(' ');

% First, we initialize the interface, if needed,
cd ..
faacets_init;
cd examples

% and define the working Bell scenario:
s = Faacets.scenario('{[2 2] [2 2]}');

% Now we define the inequality
chsh = s.inequality('<A1 B1> + <A1 B2> - <A2 B1> + <A2 B2>');

% And add name, bounds, references and extra information
chsh.setShortName('CHSH');
chsh.names.add('Clauser-Horne-Shimony-Holt inequality');
chsh.facetOf.put('local', true);

chsh.bounds.put('local', 'x <= 2');
chsh.sources.put('bounds.local', {'doi:10.1103/PhysRevLett.23.880'});

chsh.bounds.put('quantum', 'x <= [2.828427124746190, 2.828427124746191]');
chsh.sources.put('bounds.quantum', {'doi:10.1007/BF00417500', 'http://www.tau.ac.il/~tsirel/download/qbell80.html'});

chsh.bounds.put('nosignaling', 'x <= 4');

chsh.extra.put('detection_loophole', 'eta_c = 2/3');
chsh.sources.put('extra.detection_loophole', {'doi:10.1103/PhysRevA.47.R747'});

chsh.extra.put('detection_loophole_singlet', 'eta_c = [0.8284271247461901, 0.8284271247461902]');
chsh.sources.put('extra.detection_loophole_singlet' , {'doi:10.1111/j.1749-6632.1986.tb12444.x' 'doi:10.1103/PhysRevD.35.3831'});

chsh.bounds.put('ten_percents_nonfree_settings', 'x <= 2.2');

% We now save the inequality into a file
chsh.save([pwd '/../inequalities/chsh.yaml']);
disp('Inequality saved in file inequalities/chsh.yaml.');
disp(' ');
