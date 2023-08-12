//Caption: Program to Design FIR Low Pass Filter
clc;
close;
M = input('Enter the Odd Filter Length =');             //Filter length 
Wc = input('Enter the Digital Cutoff frequency ='); //Digital Cutoff frequency
Tuo = (M-1)/2     //Center Value
for n = 1:M
    if (n == Tuo+1)
      hd(n) = Wc/%pi;
    else
      hd(n) =  sin(Wc*((n-1)-Tuo))/(((n-1)-Tuo)*%pi);
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
title('Frequency Response 0f FIR LPF using Rectangular window')
xgrid(1)
subplot(2,1,2)
plot(2*fr,hzm_dB)
xlabel('Normalized Digital Frequency W');
ylabel('Magnitude in dB');
title('Frequency Response 0f FIR LPF using Rectangular window')
xgrid(1)

//OUTPUT Test case
//Enter the Odd Filter Length = 7
//Enter the Digital Cutoff frequency = %pi/2
//Result
// "Filter Coefficients are"
//  -0.1061033
//   1.949D-17
//   0.3183099
//   0.5
//   0.3183099
//   1.949D-17
//  -0.1061033
