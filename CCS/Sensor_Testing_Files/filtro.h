#ifndef _FILTRO_H_
#define _FILTRO_H_

#include "Coef.h"
//#include "Coef_Noise.h"

#ifdef __cplusplus
extern "C" {
#endif

#define N 101 //numero de coeficientes
#define N_orden 201 //orden del filtro
extern int firFilter(int,int,int*, int*); //(muestra,número de coeficientes, dirección de coeficientes, dirección de buffer)
extern float conv(int*); //conversión de entero 16 bits a flotante

int xb_EDA[N_orden];
int xb_PPG[N_orden];

//Filtros EDA 0.04 a 1 Hz
int FIR_EDA(int x){
    int y_int;
    y_int=firFilter(x,N,coef_FIR_EDA,xb_EDA);
    return y_int;
}

//Filtros PPG 0.3 a 10 Hz
int FIR_PPG(int x){
    int y_int;
    y_int=firFilter(x,N,coef_FIR_PPG,xb_PPG);
    return y_int;
}


#ifdef __cplusplus
}
#endif // extern "C"

#endif //end of _CLA_SHARED_H_ definition

//
// End of file
//
