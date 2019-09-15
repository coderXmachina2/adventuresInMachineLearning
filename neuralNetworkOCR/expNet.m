%load Data Stream
[oberr, obtrgts]= crrptDatStream1BitErr;
[tberr, tbtrgts]= crrptDatStream2BitErr;
[thrberr, thrbtrgts]= crrptDatStream3BitErr;

[addOBRndm, xOBRndmTrgt]= addRndm1BitDatStream;
[addTBRndm, xTBRndmTrgt]= addRndm2BitDatStream;
[addThrBRndm, xThrBRndmTrgt]= addRndm3BitDatStream;

[addOBStrct, xOBStrctTrgt]= addStrct1BitDatStream;
[addTBStrct, xTBStrctTrgt]= addStrct2BitDatStream;
[addThrBStrct, xThrBStrctTrgt]= addStrct3BitDatStream;

%Put Data through net
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%trainConfMat = ffNetFiftyNodes(input);
%inputPerf = perform(ffNetFiftyNodes, trainConfMat, targets);

%one bit of error
confMatOBerr = ffNetFiftyNodes(oberr);
a = perform(ffNetFiftyNodes, confMatOBerr ,obtrgts);

%two bit error
confMatTBerr = ffNetFiftyNodes(tberr);                 
b = perform(ffNetFiftyNodes, confMatTBerr, tbtrgts);

%three bit error
confMatThrBerr = ffNetFiftyNodes(thrberr);                 
c = perform(ffNetFiftyNodes,confMatThrBerr,thrbtrgts);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%one bit rndm add
confMatOBRndm = ffNetFiftyNodes(addOBRndm);
d = perform(ffNetFiftyNodes,confMatOBRndm,xOBRndmTrgt);

%two bit rndm add
confMatTBRndm = ffNetFiftyNodes(addTBRndm);                 
e = perform(ffNetFiftyNodes,confMatTBRndm,xTBRndmTrgt);

%three bit rndm error
confMatThrBRndm = ffNetFiftyNodes(addThrBRndm);                 
f = perform(ffNetFiftyNodes,confMatThrBRndm,xThrBRndmTrgt);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%one bit rndm add
confMatOBStrct = ffNetFiftyNodes(addOBStrct);
g = perform(ffNetFiftyNodes, confMatOBStrct, xOBStrctTrgt);

%two bit rndm add
%addTBStrct, xTBStrctTrgt
confMatTBStrct = ffNetFiftyNodes(addTBStrct);
h = perform(ffNetFiftyNodes, confMatTBStrct, xTBStrctTrgt);

%three bit rndm add
%addThrStrct, xThrBStrctTrgt
confMatThreeBStrct = ffNetFiftyNodes(addThrBStrct);
i = perform(ffNetFiftyNodes, confMatThreeBStrct, xThrBStrctTrgt);


