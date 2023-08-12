//Caption:Discrete Periodic Spectrum Plot of N-point Sequece
clear all;
clc;
x=[0,1,2,3];
//Computing DFT and IDFT
X=fft(x,-1);
disp('The DFT of given sequence x[n] is X(k)=')
disp(X)
Phase=atan(imag(X),real(X));
figure
subplot(2,1,1)
a=gca();
a.data_bounds=[0,0;5,6];
a.x_location='origin'
a.y_location='origin'
plot2d3('gnn',[0:length(x)-1],abs(X))
poly1=a.children(1).children(1);
poly1.thickness=2;
xtitle('Magnitude Response','K','X(K)');
subplot(2,1,2)
a=gca();
a.data_bounds=[0,0;5,2];
a.x_location='origin'
a.y_location='origin'
plot2d3('gnn',[0:length(x)-1],Phase)
poly1=a.children(1).children(1);
poly1.thickness=2;
xtitle('Phase Response','K','<X(K)');
disp('The Magnitude Response is |X(k)|=')
disp(abs(X))
disp('The Phase Response is <X(K)=')
disp(Phase)


//OUTPUT Test case
//Result
//"The DFT of given sequence x[n] is X(k)="
//
//   6. + 0.i  -2. + 2.i  -2. + 0.i  -2. - 2.i
//
//  "The Magnitude Response is |X(k)|="
//
//   6.   2.8284271   2.   2.8284271
//
//  "The Phase Response is <X(K)="
//
//   0.   2.3561945   3.1415927  -2.3561945
