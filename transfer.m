
imdir = fullfile('C:\','Users','Soulbrotha', 'Documents','MATLAB' , 'new' );
addpath(imdir);

ends = path() 
layers = [imageInputLayer([28 28 3])
        convolution2dLayer([5 5],10)
        reluLayer()
        fullyConnectedLayer(10)
        softmaxLayer()
        classificationLayer()];

load('labelingSession.mat')

options = trainingOptions('sgdm', ...
  'MiniBatchSize', 32, ...
  'InitialLearnRate', 1e-6, ...
  'MaxEpochs', 10);

rcnn = trainRCNNObjectDetector(ends, layers, options, 'NegativeOverlapRange', [0 0.3]);