//1.GENERATION OF ELEMENTARY DISCRETE TIME SEQUENCE
//1.3 Caption: Discrete Ramp Sequence
clear;
clc;
close;
L = 4;  //Upperlimit
n = -L:L;
x = [zeros(1,L),0:L];  
b = gca();
b.y_location = 'middle';
plot2d3('gnn',n,x) 
a=gce();
a.children(1).thickness =2;
xtitle('Graphical Representation of Discrete Unit Ramp Sequence','n','x[n]');
