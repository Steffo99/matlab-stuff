%% Clear the workspace.
clear;

%% Load the Datamatrix.
load("daticovid.mat");

%% Plot stuff.
hold on;
plot(Datamatrix(:, 1));
plot(Datamatrix(:, 2));
plot(Datamatrix(:, 6));

%% Calculate stuff.
last_row = Datamatrix(end, :);
percent = last_row(1) ./ last_row(6);


figure;
total_cases = Datamatrix(:, 1);
new_cases = zeros(36, 1);
new_cases(1) = total_cases(1);
for n = 2:36
    new_cases(n) = total_cases(n) - total_cases(n - 1);
end
plot(new_cases)
