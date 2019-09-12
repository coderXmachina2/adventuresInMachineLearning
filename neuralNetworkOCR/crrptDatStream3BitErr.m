function [alphabet,targets] = crrptDatStream3BitErr()

%alpha
charAlpha =  [0 0 0 0 0 0 0 0 0 0 ...
              0 0 0 1 1 0 0 0 1 0 ...
              0 0 0 0 0 1 0 1 0 0 ...
              0 1 0 0 0 0 0 0 0 0 ...
              0 1 0 0 0 0 1 0 0 0 ...
              0 1 0 0 0 0 1 0 0 0 ...
              0 1 0 0 0 0 1 0 0 0 ...
              0 0 1 0 0 0 1 0 0 0 ...
              0 0 0 1 0 1 0 1 1 0 ...
              0 0 0 0 0 0 0 0 0 0 ]';

%beta
charBeta =  [0 0 0 0 0 0 0 0 0 0 ...
             0 1 1 1 1 1 0 0 0 0 ...
             0 1 0 0 0 0 0 0 1 0 ...
             0 1 0 0 0 0 0 0 1 0 ...
             0 1 0 1 1 1 1 1 0 0 ...
             0 1 0 0 0 0 0 0 1 0 ...
             0 1 0 0 0 0 0 0 1 0 ...
             0 1 1 1 1 1 1 1 0 0 ...
             0 1 0 0 0 0 0 0 0 0 ...
             0 0 0 0 0 0 0 0 0 0 ]';

%delta
charDelta =  [0 0 0 0 0 0 0 0 0 0 ...
              0 0 0 0 1 1 1 1 1 0 ...
              0 0 0 0 1 1 0 0 0 0 ...
              0 0 0 0 0 0 1 0 0 0 ...
              0 0 1 1 1 1 1 1 0 0 ...
              0 1 0 0 0 0 0 0 1 0 ...
              0 0 0 0 0 0 0 0 0 0 ...
              0 1 0 0 0 0 0 0 1 0 ...
              0 0 1 1 1 1 1 1 0 0 ...
              0 0 0 0 0 0 0 0 0 0 ]';
%eta
charEta  = [0 0 0 0 0 0 0 0 0 0 ...
            0 1 1 0 0 1 1 1 0 0 ...
            0 0 0 1 0 0 0 0 1 0 ...
            0 0 0 1 0 0 0 0 1 0 ...
            0 0 0 0 0 0 0 0 1 0 ...
            0 0 0 1 0 0 0 0 1 0 ...
            0 0 0 1 0 0 0 0 1 0 ...
            0 0 0 0 0 0 0 0 1 0 ...
            0 0 0 1 0 0 0 0 1 0 ...
            0 0 0 0 0 0 0 0 0 0 ]';
%gamma
charGamma  = [0 0 0 0 0 0 0 0 0 0 ...
              0 1 0 0 0 0 0 0 1 0 ...
              0 0 1 0 0 0 0 1 0 0 ...
              0 0 0 1 0 0 1 0 0 0 ...
              0 0 0 0 1 0 0 0 0 0 ...
              0 0 0 0 1 0 0 0 0 0 ...
              0 0 0 0 0 0 0 0 0 0 ...
              0 0 1 0 0 0 0 0 0 0 ...
              0 0 0 0 0 0 0 0 0 0 ...
              0 0 0 0 0 0 0 0 0 0 ]';
%lambda
charLambda =  [0 0 0 0 0 0 0 0 0 0 ...
               0 0 0 0 1 0 0 0 0 0 ...
               0 0 1 0 0 1 0 0 0 0 ...
               0 1 0 0 0 1 1 0 0 0 ...
               0 0 0 0 1 0 0 0 0 0 ...
               0 0 0 0 1 0 0 1 0 0 ...
               0 0 0 1 0 0 0 1 0 0 ...
               0 0 0 0 0 0 0 1 1 0 ...
               0 1 0 0 0 0 0 1 1 0 ...
               0 0 0 0 0 0 0 0 0 0 ]';
%omega
charOmega =  [0 0 0 0 0 0 0 0 0 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 0 0 0 0 0 0 0 1 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 1 0 0 1 0 0 0 1 0 ...
              0 0 1 1 0 1 1 0 0 0 ...
              0 0 0 0 0 0 0 0 0 0 ]';
%phi
charPhi = [ 0 0 0 0 0 0 0 0 0 0 ...
            0 0 0 1 0 0 0 0 0 0 ...
            0 0 1 1 1 1 1 0 0 0 ...
            0 1 0 1 0 0 0 0 1 0 ...
            0 1 0 0 0 0 0 0 1 0 ...
            0 1 0 1 0 0 0 0 0 0 ...
            0 1 0 1 0 0 0 0 1 0 ...
            0 0 1 1 1 1 1 1 0 0 ...
            0 0 0 1 0 0 0 0 0 0 ...
            0 0 0 0 0 0 0 0 0 0 ]';
%pi
charPi =  [0 0 0 0 0 0 0 0 0 0 ...
           0 1 1 1 1 0 1 1 0 0 ...
           0 0 0 1 0 0 1 0 0 0 ...
           0 0 0 0 0 0 1 0 0 0 ...
           0 0 0 1 0 0 1 0 0 0 ...
           0 0 0 1 0 0 1 0 0 0 ...
           0 0 0 1 0 0 1 0 0 0 ...
           0 0 0 1 0 0 1 0 0 0 ...
           0 1 1 0 0 0 0 1 1 0 ...
           0 0 0 0 0 0 0 0 0 0 ]';
%tau
charTau =  [0 0 0 0 0 0 0 0 0 0 ...
            0 0 0 1 1 1 1 1 1 0 ...
            0 1 0 0 0 0 0 0 0 0 ...
            0 0 0 0 0 1 0 0 0 0 ...
            0 0 0 0 0 1 0 0 0 0 ...
            0 0 0 0 0 1 0 0 0 0 ...
            0 0 0 0 0 1 0 0 0 0 ...
            0 0 0 0 0 1 0 0 0 0 ...
            0 0 0 0 0 0 0 1 0 0 ...
            0 0 0 0 0 0 0 0 0 0 ]';

alphabet = [charAlpha,charBeta,charDelta,charEta,charGamma,charLambda,charOmega,charPhi,charPi,charTau];

targets = eye(10);
