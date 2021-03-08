clearvars
%.dat to .h 
TableT=importdata('h_EDA.dat',' ',1);
str = num2str(TableT.data.');
str = regexprep(str,'\s+',',');
fid = fopen('Coef.h','w');
fprintf(fid,'#include<stdint.h>\n');
fprintf(fid,'int16_t coef_FIR_EDA[101] = {%s};\n',str);

TableT=importdata('h_PPG.dat',' ',1);
str = num2str(TableT.data.');
str = regexprep(str,'\s+',',');

fprintf(fid,'int16_t coef_FIR_PPG[101] = {%s};\n',str);
fclose(fid);


