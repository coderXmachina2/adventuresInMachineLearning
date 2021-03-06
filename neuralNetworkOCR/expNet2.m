 close all;
 clc;

%load data, load network
[input, targets] = datStream;
%ffNetFiftyNodes = feedforwardnet(20);

%view before training
view(ffNetFiftyNodes);

%train
[ffNetFiftyNodes, tr] = traingda(ffNetFiftyNodes, input, targets); %

%view after training
view(ffNetFiftyNodes);

inputConfMat = ffNetFiftyNodes(input);
perfInput = perform(ffNetFiftyNodes, inputConfMat, targets);

perfSumAbsErr = sae(ffNetFiftyNodes,targets,inputConfMat);