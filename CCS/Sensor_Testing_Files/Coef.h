#include<stdint.h>
////PPG: 0.3-10 Hz EDA: 0.16-2.1 Hz Q14  fs=128 Hz
int16_t coef_FIR_EDA[101] = {-13,-12,-12,-11,-11,-10,-9,-9,-8,-7,-6,-5,-4,-3,-1,0,1,3,4,6,7,9,10,12,13,13,14,14,14,13,11,10,7,4,0,-5,-10,-16,-23,-30,-39,-48,-58,-68,-79,-90,-101,-113,-125,-136,-148,-158,-169,-178,-187,-194,-200,-204,-207,-208,-207,-203,-197,-189,-178,-164,-147,-128,-106,-81,-53,-22,11,47,85,125,167,211,257,304,351,400,448,497,546,593,640,685,728,770,809,845,878,909,935,958,977,992,1003,1009,1011};
int16_t coef_FIR_PPG[101] = {5,6,6,6,6,6,6,5,4,3,2,0,-2,-4,-7,-10,-14,-18,-22,-26,-31,-36,-40,-45,-49,-54,-57,-61,-63,-65,-66,-66,-66,-64,-61,-58,-53,-48,-42,-36,-29,-23,-17,-11,-6,-3,0,0,-2,-6,-13,-22,-35,-50,-68,-89,-113,-140,-169,-199,-231,-264,-298,-330,-362,-392,-419,-442,-462,-477,-485,-488,-484,-473,-453,-426,-391,-348,-296,-237,-171,-98,-18,66,155,247,341,437,532,625,716,802,884,958,1026,1084,1134,1173,1201,1218,1224};
