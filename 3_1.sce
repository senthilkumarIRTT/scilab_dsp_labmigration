//Caption: Progrem to find the Autocorrelation of a given Input Sequence
clear all;
clc;
x = input('Enter the given discrete time sequence');       
L = length(x);
h = zeros(1,L);
for i = 1:L
  h(L-i+1) = x(i);
end
N = 2*L-1;
Rxx = zeros(1,N);
for i = L+1:N
   h(i) = 0;
end
for i = L+1:N
    x(i) = 0;
end

for n = 1:N
  for k = 1:N
    if(n >= k)
      Rxx(n) = Rxx(n)+x(n-k+1)*h(k);
    end
  end
end
disp('Auto Correlation Result is')
disp(Rxx)


//OUTPUT Test case
//Enter the given discrete time sequence [1,2,3,4]
//Result
//"Auto Correlation Result is"
//4.   11.   20.   30.   20.   11.   4.
