% Given data
data = a; % Replace with your actual data
frequency = 125; % Frequency of the data
samples_per_minute = 60 * frequency; % Number of samples in 1 minute
samples_per_epoch = 7500; % Number of samples in 1 epoch

% Calculate the number of minutes in the data
num_minutes = numel(data) / samples_per_minute;

% Calculate the number of epochs
num_epochs = floor(num_minutes);

% Reshape the data into epochs
epochs = reshape(data(1:num_epochs*samples_per_minute), samples_per_epoch, num_epochs)';

% If there are remaining samples after forming complete epochs
remaining_samples = data((num_epochs*samples_per_minute)+1:end);

% Check if remaining samples are sufficient to form a complete epoch
if numel(remaining_samples) >= samples_per_epoch
    % Reshape remaining samples into an epoch
    last_epoch = reshape(remaining_samples(1:samples_per_epoch), [], 1)';
    epochs = [epochs; last_epoch];
end

% Now, epochs contains each row representing 1 minute of data
