ffNetFiftyNodes = feedforwardnet(50);

view(ffNetFiftyNodes);

[input, targets] = datStream;

[ffNetFiftyNodes, tr] = train(ffNetFiftyNodes, input, targets); %

view(ffNetFiftyNodes);