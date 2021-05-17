/*
 * MergeSort.c
 *
 *  Created on: 16/02/2021
 *      Author: becam
 */
#include <stdint.h>

#define N 32

void Merge(float* Amp, int l, int m, int r){
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;
    float L[N], R[N];

    for(i = 0; i < n1; i++){
        //First half
        L[i] = Amp[l + i];
    }
    for(j = 0; j < n2; j++){
        //Second half
        R[j] = Amp[m + 1 + j];
    }
    i = 0;
    j = 0;
    k = l;

    //Sort
    while( i < n1 && j < n2){
        if(L[i] <= R[j]){
            Amp[k] = L[i];
            i++;
        }
        else{
            Amp[k] = R[j];
            j++;
        }
        k++;
    }

    //Numbers left

    while(i < n1){
        Amp[k] = L[i];
        i++;
        k++;
    }

    while(j < n2){
        Amp[k] = R[j];
        j++;
        k++;
    }
}

void MergeSort(float* Amp, int l, int r){
    if(l < r){
        //Index that halves the array
        int m = l + (r - l)/2;
        //First half
        MergeSort(Amp, l, m);
        //Second half
        MergeSort(Amp, m+1, r);
        Merge(Amp, l, m, r);
    }
}
