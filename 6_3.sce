//IIR Butterworth BPF Filter
clear all;
clc;
n=3;
ftype='bp';
fdesign = 'butt';
frq=[0.15,0.25];
delta=[0.08,0.02]
hz=iir(n,ftype,fdesign,frq);
[hzm,fr]=frmag(hz,256);
plot2d(fr',hzm')
xtitle('Discrete IIR filter: band pass  0.15 < fr < 0.25 ',' ',' ');
xlabel('Noramlized= Frequency w-->')
ylabel('Magnitude response Hd(w)------------>')
xgrid(2) 
