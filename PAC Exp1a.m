% Single Capacity %
clc
clear all
close all
R=0.00485;
A=6647.6;
t=A*R;
TF=tf(2777.8*R,[t 1]);
step(TF)
title('19BEI0086 ADITYA RAJ');

