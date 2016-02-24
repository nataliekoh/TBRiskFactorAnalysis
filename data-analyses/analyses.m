%% load the data
file = readtable('all_condensed.csv');

%% basic descriptions
% col = desc
% 2 = year
% 3 = # of TB
% 4 = % of TB patients with known HIV status
% 5 = % of TB patients (tested) that are HIV-positive
% 6 = % of HIV + TB patients on CPT
% 7 = % of HIV + TB patients on ART


% todo - merge cote d'ivoire
unique_countries = numel(unique(file(:, 2)));

% view afghanistan # of TB
afghan_i = find(strcmp(file{:, 2}, 'Afghanistan') == 1);

afghan_years = file{afghan_i, 3};
afghan_nTB = file{afghan_i, 4};

figure;
plot(afghan_years, afghan_nTB);