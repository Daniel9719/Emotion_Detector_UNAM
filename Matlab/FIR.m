clearvars

Fs_EDA = 32;     %Sampling frequency of EDA 32 Hz
Fs_PPG = 128;     %Sampling frequency of PPG 128 Hz

n_EDA=200;
f_EDA = 2.16;         %Cut-off frequency of EDA

n_PPGBand=200;
f_PPGLow = 0.4;      %Cut-off frequency of PPG
f_PPGHigh = 3.58;         %Cut-off frequency of PPG

wn_EDA = (f_EDA)/(Fs_EDA/2); 
h_EDA = fir1(n_EDA,wn_EDA);

wnBand_PPG = [(f_PPGLow)/(Fs_PPG/2) (f_PPGHigh)/(Fs_PPG/2)]; 
h_PPGBand = fir1(n_PPGBand,wnBand_PPG);

fvtool(h_EDA,1,h_PPGBand,1,'NumberofPoints',100000,'MagnitudeDisplay','Magnitude')
%% Max and Min of EDA
max(h_EDA)
min(h_EDA)

%% Max and Min of PPG
max(h_PPGBand)
min(h_PPGBand)
%% double to int16 (Q15)
Q=15;
h_EDA=h_EDA';
h_EDA=h_EDA*2^Q;
h_EDA=int16(h_EDA);

h_PPGBand=h_PPGBand';
h_PPGBand=h_PPGBand*2^Q;
h_PPGBand=int16(h_PPGBand);

%% Tables
Tab=table(h_EDA);
writetable(Tab,'h_EDA.dat');

Tab=table(h_PPGBand);
writetable(Tab,'h_PPG.dat');
