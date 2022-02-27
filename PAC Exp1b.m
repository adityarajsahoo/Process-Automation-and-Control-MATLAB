% Multi-capacity Process %
% Non Interacting
clc
clear all
close all
r1=3.239e-3;
r2=7.019e-3;
a1=6647.61;
a2=6647.61;
t1=r1*a1;
t2=r2*a2;
TF = tf([r2*2777.8],[t1*t2 t1+t2 1]);
step(TF)
title('19BEI0086 ADITYA RAJ');