//1.GENERATION OF ELEMENTARY DISCRETE TIME SEQUENCE
//1.2Caption: Unit Step Sequence
clear;
clc;
close;
L = 4;  //Upperlimit
n = -L:L;
x = [zeros(1,L),ones(1,L+1)];
a=gca();
a.y_location = "middle";
plot2d3('gnn',n,x) 
title('Graphical Representation of Unit Step Signal')
xlabel('………………. n');
ylabel('………………. x[n]');
