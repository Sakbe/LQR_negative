%% check example for kalman filter, check states
close all
clear all
clc

A = [1.1269   -0.4940    0.1129;
     1.0000         0         0;
          0    1.0000         0];

B = [-0.3832;
      0.5919;
      0.5191];

C = [1 0 0];
Plant = ss(A,[B B],C,0,-1,'inputname',{'u' 'w'},'outputname','y');

Q = 1; 
R = 1;
[kalmf,L,P,M] = kalman(Plant,Q,R);
time = [0:100]';
u = sin(time/5);

[Y_neg,lsimtime,X_neg_k]=lsim(kalmf,[u u],time);

