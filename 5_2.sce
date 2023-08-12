//Caption: Program to Design FIR High Pass Filter
clear;
clc;
close;
M = input('Enter the Odd Filter Length =');             //Filter length 
Wc = input('Enter the Digital Cutoff frequency ='); //Digital Cutoff frequency
Tuo = (M-1)/2     //Center Value
for n = 1:M
    if (n == Tuo+1)
      hd(n) = 1-Wc/%pi;
    else
      hd(n) = (sin(%pi*((n-1)-Tuo)) -sin(Wc*((n-1)-Tuo)))/(((n-1)-Tuo)*%pi);
    end
end
//Rectangular Window
for n = 1:M
  W(n) = 1;
end
//Windowing Fitler Coefficients
h = hd.*W;
disp('Filter Coefficients are')
disp(h)
[hzm,fr]=frmag(h,256);
hzm_dB = 20*log10(hzm)./max(hzm);
subplot(2,1,1)
plot(2*fr,hzm)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude');
title('Frequency Response 0f FIR HPF using Rectangular window')
xgrid(1)
subplot(2,1,2)
plot(2*fr,hzm_dB)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR HPF using Rectangular window')
xgrid(1)

//OUTPUT Test case
//Enter the Odd Filter Length = 5
//Enter the Digital Cutoff frequency = %pi/4
//"Filter Coefficients are"
//  -0.1591549
//  -0.2250791
//   0.75
//  -0.2250791
//  -0.1591549
