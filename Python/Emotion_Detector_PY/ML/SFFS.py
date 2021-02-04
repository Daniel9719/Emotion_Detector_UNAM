# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 14:54:25 2020

@author: Samuel Osorio Gutiérrez
"""
import ML.LDA as LDA
import numpy as np

def SFFS_wrapper(features_train, features_test, targets_train, targets_test, pLDA):
    D=features_train.shape[1] #dimension de los vectores de caracteristicas
    new_features_train=[]#lista con los nuevos vectores reducidos para el entrenamiento
    new_features_test=[]#lista con los nuevos vectores reducidos para el test
    featuresIndex=[*range(D)] #se crea una lista con los indices de cada caracteristica
    IndexAdd=[] #lista con indices agregados
    k=0
    maxValue=0
    while k<D: #se realiza el proceso hasta tener las k caracteristicas deseadas
        accs=[]#lista con exactitudes
        index_d=[]#lista con los indices utilizados en el ciclo
        for d in featuresIndex:  #para cada característica
            new_features_train.append(features_train[:,d])#se agrega una caracteristica a los conjuntos
            new_features_test.append(features_test[:,d])
            new_features_train=np.array(new_features_train)
            new_features_test=np.array(new_features_test)
            if k==0:#hay una consideración especial para el incio pues se necesita una matriz de nx1 en lugar de un vector de n
                new_features_train = new_features_train.reshape((-1, 1))
                new_features_test = new_features_test.reshape((-1, 1))
            else:
                new_features_train=np.transpose(new_features_train)# se realiza transpuesta porque la lista los ordena al revés
                new_features_test=np.transpose(new_features_test)
            S_inv,m_k,pi_k=LDA.train(new_features_train,targets_train, pLDA,Terminal=False)
            prediction=LDA.classification(S_inv,m_k,pi_k, new_features_test)
            acc=LDA.accuracy(prediction,targets_test)
            accs.append(acc)#se almacenan todas las exactitudes obtenidas
            index_d.append(d)#se agrega el indice con el que se trabajo en el ciclo
            new_features_train=np.transpose(new_features_train) #se realiza transpuesta para volver lista
            new_features_test=np.transpose(new_features_test)
            new_features_train=list(new_features_train)
            new_features_train.pop(k)#se elimina el vector de la lista para probar con otro
            new_features_test=list(new_features_test)
            new_features_test.pop(k)           
        max_anterior=maxValue
        maxValue=max(accs)#se identifica la exactitud con maximo valor
        if maxValue<max_anterior:
            break
        index=accs.index(maxValue)#se identifica cual fue el vector con la mayor exactitud
        index=index_d[index]#se utiliza actualiza el indice tomando en cosnideracion los eliminados
        IndexAdd.append(index) #se guarda el indice seleccioando
        new_features_train.append(features_train[:,index])#se agrega la característica con mejor desempeño
        new_features_test.append(features_test[:,index])
        featuresIndex.remove(index)#se elimina la característica agregada de los vectores que se analizaran posteriormente
        k+=1
        while k>2:
            D_new=len(new_features_train)
            new_featuresIndex=[*range(D_new)] #se crea una lista con los indices de cada caracteristica
            accs=[]#lista con exactitudes
            index_d=[]#lista con los indices utilizados en el ciclo
            for d in new_featuresIndex:  #para cada característica agregada
                d_new=IndexAdd[d]
                new_features_train.pop(0)#se quita una caracteristica a los conjuntos
                new_features_test.pop(0)
                new_features_train=np.array(new_features_train)
                new_features_test=np.array(new_features_test)
                new_features_train=np.transpose(new_features_train)# se realiza transpuesta porque la lista los ordena al revés
                new_features_test=np.transpose(new_features_test)
                S_inv,m_k,pi_k=LDA.train(new_features_train,targets_train,pLDA,Terminal=False)
                prediction=LDA.classification(S_inv,m_k,pi_k, new_features_test)
                acc=LDA.accuracy(prediction,targets_test) 
                accs.append(acc)#se almacenan todas las exactitudes obtenidas
                index_d.append(d_new)#se agrega el indice con el que se trabajo en el ciclo
                new_features_train=np.transpose(new_features_train) #se realiza transpuesta para volver lista
                new_features_test=np.transpose(new_features_test)
                new_features_train=list(new_features_train)
                new_features_train.append(features_train[:,d_new])#se agrega de nuevo caracteristica a los conjuntos
                new_features_test=list(new_features_test)
                new_features_test.append(features_test[:,d_new])#se agrega de nuevo caracteristica a los conjuntos
            maxValueRemove=max(accs)#se identifica la exactitud con maximo valor
            if maxValueRemove<=maxValue:
                break
            maxValue=maxValueRemove
            index_remv=accs.index(maxValueRemove)#se identifica cual fue el vector con la mayor exactitud
            index=index_d[index_remv]#se utiliza actualiza el indice de los ya seleccionados previamente
            featuresIndex.append(index) #se vuelve a agregar el indice seleccionado a la lista original
            new_features_train.pop(index_remv)#se remueve la característica para un mejor desempeño
            new_features_test.pop(index_remv)
            IndexAdd.pop(index_remv)
            k-=1
    new_features_train=np.array(new_features_train)#se convierte en un arreglo y se hace la transpuesta para mantener formato
    new_features_test=np.array(new_features_test)
    new_features_train=np.transpose(new_features_train)
    new_features_test=np.transpose(new_features_test)
    
    #codificacion
    #0-7 features
    register_len=8
    index_cod=[]
    s=""
    for d in range(register_len):
        if d in IndexAdd:
            s+="1"
        else:
            s+="0"
    index_cod.append(int(s,2))
    #8-11 features
    s=""
    for d in range(register_len,register_len+8):
        if d>=register_len+4:
            break
        if d in IndexAdd:
            s+="1"
        else:
            s+="0"
    index_cod.append(int(s,2))
    #12-19 features
    s=""
    register_len+=4
    for d in range(register_len,register_len+8):
        if d in IndexAdd:
            s+="1"
        else:
            s+="0"
    index_cod.append(int(s,2))
    register_len+=8
    #20-21 features
    s=""
    for d in range(register_len,register_len+8):
        if d>=register_len+2:
            break
        if d in IndexAdd:
            s+="1"
        else:
            s+="0"
    index_cod.append(int(s,2))

    return new_features_train, new_features_test,index_cod

