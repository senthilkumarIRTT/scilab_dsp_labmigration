//1.GENERATION OF ELEMENTARY DISCRETE TIME SEQUENCE
//1.1Caption:Unit Sample Sequence
clear;
clc;
close;
L = 4;  //Upperlimit
n = -L:L;
x = [zeros(1,L),1,zeros(1,L)];
b = gca();
b.y_location = "middle";
plot2d3('gnn',n,x) 
a=gce();
a.children(1).thickness =4;
xtitle('Graphical Representation of Unit Sample Sequence','n','x[n]');
