#include<stdint.h>
//High pass EDA: 2.1 Hz PPG: 3 Hz Q15   order:201
int16_t coef_FIR_EDA[101] = {3,0,-4,-7,-9,-9,-9,-6,-2,2,7,11,13,14,12,8,1,-6,-13,-19,-22,-21,-17,-9,2,14,25,33,35,32,22,7,-11,-29,-44,-53,-53,-44,-26,-1,26,52,72,80,75,56,25,-13,-54,-88,-110,-115,-100,-65,-16,41,96,140,162,158,126,68,-8,-89,-162,-214,-232,-211,-151,-58,55,169,265,323,330,279,173,24,-147,-311,-439,-505,-488,-381,-190,65,348,615,818,908,848,613,201,-372,-1067,-1829,-2590,-3278,-3826,-4178,28463};
int16_t coef_FIR_PPG[101] = {-7,-8,-8,-9,-9,-9,-9,-9,-9,-8,-8,-6,-5,-3,-1,1,3,6,9,12,15,19,22,25,28,30,32,33,33,33,31,29,25,20,15,8,0,-9,-18,-28,-38,-49,-59,-69,-78,-86,-93,-98,-101,-101,-99,-95,-87,-77,-64,-48,-29,-8,16,41,68,96,124,151,177,202,224,242,256,266,270,267,258,242,218,186,146,98,42,-22,-93,-170,-254,-342,-435,-531,-628,-727,-825,-922,-1015,-1104,-1187,-1264,-1333,-1393,-1444,-1484,-1513,-1530,31238};
