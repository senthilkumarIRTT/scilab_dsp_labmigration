//Caption: Program to find the Cross-correlation of two Sequences
clear all;
clc;
x = [1,2,1,1];       
L = length(x);
h1 = [1,1,2,1];

//Cross-correlation using built-in function xcorr()
R_xy = xcorr(x,h1)
disp('Cross correlation using built-in function xcorr()')
disp(R_xy)
//////////////////////////////////////////////////

for i = 1:L
  h(L-i+1) = h1(i);
end
N = 2*L-1;
Rxy = zeros(1,N);
for i = L+1:N
   h(i) = 0;
end
for i = L+1:N
    x(i) = 0;
end

for n = 1:N
  for k = 1:N
    if(n >= k)
      Rxy(n) = Rxy(n)+x(n-k+1)*h(k);
    end
  end
end
disp('The input sequence 1 =')
disp(x)
disp('The input sequence 2=')
disp(h1)
disp('Cross Correlation Result is')
disp(Rxy)


//OUTPUT Test Case
//Result
//"Cross correlation using built-in function xcorr()"
//
//   1.   4.   6.   6.   5.   2.   1.
//
//  "The input sequence 1 ="
//
//   1.   2.   1.   1.   0.   0.   0.
//
//  "The input sequence 2="
//
//   1.   1.   2.   1.
//
//  "Cross Correlation Result is"
//
//   1.   4.   6.   6.   5.   2.   1.

