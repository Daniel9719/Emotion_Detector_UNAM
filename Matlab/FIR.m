clearvars

Fs_EDA = 32;     %Sampling frequency of EDA 32 Hz
Fs_PPG = 128;     %Sampling frequency of PPG 128 Hz

n_EDABand=200;
f_EDALow = 0.16;      %Cut-off frequency of EDA_SCR
f_EDAHigh = 2.1;         %Cut-off frequency of EDA_SCR

n_PPGBand=200;
f_PPGLow = 0.6;      %Cut-off frequency of PPG
f_PPGHigh = 3;         %Cut-off frequency of PPG

wnBand_EDA = [(f_EDALow)/(Fs_EDA/2) (f_EDAHigh)/(Fs_EDA/2)]; 
h_EDABand = fir1(n_EDABand,wnBand_EDA);

wnBand_PPG = [(f_PPGLow)/(Fs_PPG/2) (f_PPGHigh)/(Fs_PPG/2)]; 
h_PPGBand = fir1(n_PPGBand,wnBand_PPG);

fvtool(h_EDABand,1,h_PPGBand,1,'NumberofPoints',100000,'MagnitudeDisplay','Magnitude')
%% Max and Min of EDA
max(h_EDABand)
min(h_EDABand)

%% Max and Min of PPG
max(h_PPGBand)
min(h_PPGBand)
%% double to int16 (Q15)
Q=15;
h_EDABand=h_EDABand';
h_EDABand=h_EDABand*2^Q;
h_EDABand=int16(h_EDABand);

h_PPGBand=h_PPGBand';
h_PPGBand=h_PPGBand*2^Q;
h_PPGBand=int16(h_PPGBand);

%% Tables
Tab=table(h_EDABand);
writetable(Tab,'h_EDA');

Tab=table(h_PPGBand);
writetable(Tab,'h_PPG');
