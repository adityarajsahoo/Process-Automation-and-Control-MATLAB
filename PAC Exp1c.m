% Multi-capacity Process %
% Interacting
clc
clear all
close all
r1=12.6e-3;
r2=7.73e-3;
a1=6807.31;
t1=r1*a1;
t2=r2*a1;
n = [0 0 r2*2777.8];
d = [t1*t2 ((a1*r2)+t1+t2) 1];
TF = tf(n,d);
step(TF);
title('19BEI0086 ADITYA RAJ');