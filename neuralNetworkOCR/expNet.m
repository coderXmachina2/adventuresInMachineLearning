[oberr, obtrgts]= crrptDatStream1BitErr;
[tberr, tbtrgts]= crrptDatStream2BitErr;
[thrberr, thrbtrgts]= crrptDatStream3BitErr;

confMatThrBerr = ffNetFiftyNodes(thrberr);                 %make the noisy data input.
perfthrberr = perform(ffNetFiftyNodes,confMatThrBerr,thrbtrgts);