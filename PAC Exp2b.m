clc;
close all;
clear all;
global fin
%fin=0.2215;
%h=1; r=1; Cs=0.05; Xs=1; g=9.8;
h0=0.2;
tin=0;
tfin=0;
ts=0.02;
simt=15;
for k=1:(simt/ts);
h1(k)=h0;
if (k>0 && k<=50)
fin=0.27386;
end

if (k>50 && k<=200)
fin=0.3536;
end

if (k>200 && k<=750)
fin=0.4472;

end
time(k)=tfin;
tfin=tin+ts;
finp(k)=fin;

[t,h] = ode45(@EXP2a,[tin tfin],h0);
h0=h(length(t),:);
tin=tfin;
end
plot(time,h1);
hold on;
plot(time,finp,'r');
grid on