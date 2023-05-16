% Reconstructing an ANN model used by a research article to predict the co-pyrolysis activation energies.
% As a personal project, in order to test my skills,
% I created a MATLAB script in order to replicate an ANN model that was used by a research article.
% I then used the performance metrics to compare my model to theirs. 


% We first read the dataset and extract points (input and outputs)

% The script uses the "Mixing ratio of Oily Sludge" and the
% "Reaction conversion degree" values as input to predict the "Activation Energy".
filename = 'dataset_ai1.csv';
data = csvread(filename, 1, 0); 

% The first two columns are the input data (Mixing Ratio and Conversion
% Degree) while the last column is the output (Activation Energy), our
% target data.

input_data = data(:, 1:2);
target_data = data(:, 3);

% Just like the model used by the article, we segment the data (%80 for
% training, and %20 for testing)

[trainInd, valInd, testInd] = dividerand(size(input_data, 1), 0.8, 0, 0.2);
x_train = input_data(trainInd, :);
y_train = target_data(trainInd, :);
x_test = input_data(testInd, :);
y_test = target_data(testInd, :);

% We construct the feedforward network
% Reconstructing based on the article: hidden layer with 10 and 7 neurons
hiddenLayerSize = [10, 7]; 
net = fitnet(hiddenLayerSize);

% We set the goals, and model hyper parameters
net.trainParam.epochs = 1000; % # of training epochs
net.trainParam.goal = 1e-3; % Performance goal (industry standard)
net.trainParam.lr = 0.01; % Learning rate (0.01, based on the article )
net.trainParam.min_grad = 1e-6; % Minimum performance gradient
net.divideFcn = 'divideind'; % Using custom indices for data splitting
net.divideParam.trainInd = trainInd;
net.divideParam.valInd = valInd;
net.divideParam.testInd = testInd;

% We train the neural network
[trained_net, tr] = train(net, input_data', target_data');

% Then we test neural network
y_pred = trained_net(x_test');
y_pred = y_pred';

% Finally, we display the performance metrics
R2 = corrcoef(y_test, y_pred).^2;
RMSE = sqrt(mean((y_test - y_pred).^2));