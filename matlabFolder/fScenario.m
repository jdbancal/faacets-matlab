function fscenario = fScenario(scenario)
% function fscenario = fScenario(scenario)
% 
% This function returns a scenario in the format of faacets.
%
% Example:
%  - For the CHSH scenario : fScenario({[2 2] [2 2]})
%  - For a tripartite scenario with 4 inputs and 5 outcomes :
%      fScenario({[5 5 5 5] [5 5 5 5] [5 5 5 5]})

% This file is part of faacets-matlab.
%
% Written on 17.9.2013 by J-D Bancal
% last modified 17.9.2013


scenario2 = cellfun(@(x) mat2str(x), scenario, 'UniformOutput', false);

scenario3 = '{';
for i=1:length(scenario2)-1
    scenario3 = [scenario3, scenario2{i}, ' '];
end
scenario3 = [scenario3, scenario2{end}, '}'];

fscenario = javaMethod('apply','com.faacets.Scenario', scenario3);
