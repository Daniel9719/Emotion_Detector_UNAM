clear all
%Exportación de .dat a archivo .h 
TablaT=importdata('h_EDA.dat',' ',1);
% Arreglo a un string separado por comas
str = num2str(TablaT.data.');
str = regexprep(str,'\s+',',');
% Guardar como un archivo .h
fid = fopen('Coef.h','w');
fprintf(fid,'#include<stdint.h>\n');
fprintf(fid,'int16_t coef_FIR_EDA[101] = {%s};\n',str);

TablaT=importdata('h_PPG.dat',' ',1);
% Arreglo a un string separado por comas
str = num2str(TablaT.data.');
str = regexprep(str,'\s+',',');

fprintf(fid,'int16_t coef_FIR_PPG[101] = {%s};\n',str);
fclose(fid);


