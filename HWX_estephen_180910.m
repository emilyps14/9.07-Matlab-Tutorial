%% HW #X: Emily Stephen

%% Problem 1

% Print 'x: hello world!' for x=1,...,10
for i=1:10,
    display([num2str(i) ': hello world!'])
end

%% Problem 2

% (a) sample 500 numbers from the standard normal distribution
x = randn(1,500);

% (b) plot a histogram of the results with 25 bins
hist(x,25)
xlabel('Sample Value')
ylabel('Count')
title('Histogram of 500 samples from the standared normal distribution')

%% Problem 3

% (a) Load the MEG data
load('meg_data.mat'); % contains the variable back_average

% (b) Create an array for the time axis, assuming that the sampling rate is
% 1000 samples per second.
Fs = 1000; % sampling rate
t = (1:length(back_average))/Fs; % Create the time axis

% (c) Plot the results
figure, plot(t,back_average)
title('MEG data')
xlabel('Time (s)'), ylabel('A*m')
xlim([10,15])