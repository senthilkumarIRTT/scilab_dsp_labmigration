//1.GENERATION OF ELEMENTARY DISCRETE TIME SEQUENCE
//1.4 Caption:Exponentially Increasing Signal
clear;
clc;
close;
a =1.5; 
n =1:10;  
x = (a)^n;
a=gca();
a.thickness = 2;
plot2d3('gnn',n,x) 
xtitle('Graphical Representation of Exponentially Increasing Signal','n','x[n]');
