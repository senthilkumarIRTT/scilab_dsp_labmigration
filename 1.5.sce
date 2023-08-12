//1.GENERATION OF ELEMENTARY DISCRETE TIME SEQUENCE
//Caption: Exponentially Decreasing Signal
clear;
clc;
close;
a =0.5; 
n = 0:10;  
x = (a)^n;
a=gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',n,x) 
a.thickness = 2;
xtitle('Graphical Representation of Exponentially Decreasing Signal','n','x[n]'); 
