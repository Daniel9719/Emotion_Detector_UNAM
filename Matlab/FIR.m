%Creación de filtro FIR
clear all

Fs_EDA = 32;     %Frecuencia de muestreo EDA 32 Hz
Fs_PPG = 128;     %Frecuencia de muestreo PPG 128 Hz

n_EDABand=200;
f_EDALow = 0.16;      %Frecuencia de corte inferior EDA_SCR
f_EDAHigh = 2.1;         %Frecuencia de corte superior EDA_SCR

n_PPGBand=200;
f_PPGLow = 0.6;      %Frecuencia de corte inferior PPG
f_PPGHigh = 3;         %Frecuencia de corte superior PPG

wnBand_EDA = [(f_EDALow)/(Fs_EDA/2) (f_EDAHigh)/(Fs_EDA/2)]; 
h_EDABand = fir1(n_EDABand,wnBand_EDA);

wnBand_PPG = [(f_PPGLow)/(Fs_PPG/2) (f_PPGHigh)/(Fs_PPG/2)]; 
h_PPGBand = fir1(n_PPGBand,wnBand_PPG);

fvtool(h_EDABand,1,h_PPGBand,1,'NumberofPoints',100000,'MagnitudeDisplay','Magnitude')
%% Máximos y mínimos EDA
max(h_EDABand)
min(h_EDABand)

%% Máximos y mínimos PPG
max(h_PPGBand)
min(h_PPGBand)
%% Conversion a entero Q15
Q=15;
h_EDABand=h_EDABand';
h_EDABand=h_EDABand*2^Q;
h_EDABand=int16(h_EDABand);

h_PPGBand=h_PPGBand';
h_PPGBand=h_PPGBand*2^Q;
h_PPGBand=int16(h_PPGBand);

%% Creación de tablas
Tab=table(h_EDABand);
writetable(Tab,'h_EDA');

Tab=table(h_PPGBand);
writetable(Tab,'h_PPG');

%encabezado: 1651 2 C000 1 c9
