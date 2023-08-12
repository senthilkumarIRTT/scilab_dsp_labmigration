//Caption:Program for Linear Convolution
clc;
clear all;
close ;
x = input('enter x seq');
h = input('enter h seq');
m = length(x);
n = length(h);
//Method 1 Using Direct Convolution Sum Formula
for i = 1:n+m-1
    conv_sum = 0;
    for j = 1:i
        if (((i-j+1) <= n)&(j <= m))
            conv_sum = conv_sum + x(j)*h(i-j+1);
        end;
        y(i) = conv_sum;
    end;    
end;
disp(y','Convolution Sum using Direct Formula Method =')
//Method 2 Using Inbuilt Function
f = convol(x,h)
disp(f,'Convolution Sum Result using Inbuilt Funtion =')
//Method 3 Using frequency Domain multiplication
N = n+m-1;
x = [x zeros(1,N-m)];
h = [h zeros(1,N-n)];
f1 = fft(x)
f2 = fft(h)
f3 = f1.*f2;   // freq domain multiplication
f4 = ifft(f3)
disp(f4,'Convolution Sum Result DFT - IDFT method =')
//f4 =  real(f4)
subplot(3,1,1);
plot2d3('gnn',x) 
xtitle('Graphical Representation of Input signal x');
subplot(3,1,2);
plot2d3('gnn',h) 
xtitle('Graphical Representation of Impulse signal h');
subplot(3,1,3);
plot2d3('gnn',y) 
xtitle('Graphical Representation of Output signal y');


//OUTPUT Test case

//enter x seq [1,1,1,1]
//enter h seq [1,2,3]

//Result
//  1.   3.   6.   6.   5.   3.
//  "Convolution Sum using Direct Formula Method ="
//   1.   3.   6.   6.   5.   3.
//  "Convolution Sum Result using Inbuilt Funtion ="
//   1.   3.   6.   6.   5.   3.
//  "Convolution Sum Result DFT - IDFT method ="
