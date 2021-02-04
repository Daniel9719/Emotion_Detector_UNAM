#-------------------IMPORTACIÓN DE MÓDULOS------------------------#

from tkinter import *
import tkinter as tk

from PIL import ImageTk, Image

from tkinter import messagebox

#Graph
import matplotlib
import matplotlib.pyplot as plt
matplotlib.use("TkAgg")
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
from pandas import DataFrame, read_csv

#Open files
from tkinter import filedialog

#Import functions from EMDC
from ML.EMDC import train

def declarar_widgets(rf_coms, root, loop):
    #Variables for connection and measure buttons
    global toggle_conectar
    toggle_conectar = 1
    global toggle_medir
    toggle_medir = 1
    
    #Number of records 
    global num_reg
    num_reg = 0
    
    #Background image 
    global imagen_fondo
    imagen_fondo=ImageTk.PhotoImage(Image.open("bg.jpeg"))
    img_fondo = tk.Label(image=imagen_fondo)
    img_fondo.place(relwidth = 1, relheight = 1)
    
    #Mode variable (string type)
    global modo
    modo = tk.StringVar()
    #Set training by default
    modo.set("entrenamiento")
    
    global modo_texto
    modo_texto = tk.Label(root, relief=tk.RAISED, padx = 10, pady = 4, text="Modo " + str(modo.get()), fg= "#FFFFFF", font=("Times New Roman",15), bg='#2E5D94')
    modo_texto.place(relx = 0.5, rely = 0.05, anchor = tk.CENTER)
    
    
    #-------------------CONFIGURATION PARAMETERS------------------------#
    
    frame=tk.Frame(root, relief=tk.RAISED, bg='#2E5D94', bd=5)
    frame.place(relx=0.03, rely=0.2, relwidth=0.5, relheight=0.4)

    #Texto para indicar los parámetros de configuración
    param_config_l = tk.Label(frame, text="Configuración", font=("Times New Roman",15), fg= "#FFFFFF", bg='#2E5D94')
    param_config_l.place(relx = 0.5, rely = 0.05, anchor=tk.CENTER)
    
    #Texto para indicar los modos
    modo_texto2 = tk.Label(frame, text="Selección de modalidad", fg= "#FFFFFF", bg='#2E5D94')
    modo_texto2.place(relx = 0.05, rely = 0.15)
    
    #Training and test mode options
    modoEnt = tk.Radiobutton(frame, text="Entrenamiento", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = modo, value = "entrenamiento", command = selec_modo)
    modoEnt.place(relx = 0.05, rely = 0.25)
    
    modoPrueba = tk.Radiobutton(frame, text = "Prueba", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = modo, value = "prueba", command = selec_modo)
    modoPrueba.place(relx = 0.05, rely = 0.35)
    
    #Texto para indicar las señales fisiológicas seleccionadas
    señales_texto = tk.Label(frame, text="Selección de señales fisiológicas", fg= "#FFFFFF", bg='#2E5D94')
    señales_texto.place(relx = 0.05, rely = 0.6)
    
    #Variales for physiological signals (int type)
    #One variable for each signal
    global ppg
    ppg = tk.IntVar()
    
    global eda
    eda = tk.IntVar()
    
    #Por default ambas señales fisiológicas están activadas
    #El usuario puede modificarlo en cualquier momento en el modo de entrenamiento
    #Cuando se deselecciona, la variable adquiere el valor 0
    ppg.set(1)
    eda.set(1)
    
    #Checkbutton  for physiological signal selection
    global ck_PPG
    ck_PPG = tk.Checkbutton(frame, text="PPG", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = ppg)
    ck_PPG.place(relx = 0.05, rely = 0.7)
    
    global ck_EDA
    ck_EDA = tk.Checkbutton(frame, text="EDA", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = eda)
    ck_EDA.place(relx = 0.05, rely = 0.85)
    
    #Variable para la activación/desactivación del RGB (tipo entero)
    global rgb 
    rgb = tk.IntVar()
    
    #Activar/Desactivar LED RGB
    ck_rgb = tk.Checkbutton(frame, text="Habilitar RGB", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = rgb)
    ck_rgb.place(relx = 0.5, rely = 0.3)
    
    #Boton para enviar parámetros configuración
    global enviar_parametros_config_btn
    enviar_parametros_config_btn = tk.Button(frame, text="Enviar configuración", state = tk.DISABLED, command =  lambda: verif_config(rf_coms, loop))
    enviar_parametros_config_btn.place(relx = 0.85, rely = 0.85, anchor = tk.CENTER)
    
    
    
    #-------------------BOTONES DE CONECTAR Y MEDIR------------------------#
    
    frame2=tk.Frame(root, relief=tk.RAISED, bg='#2E5D94', bd=5)
    frame2.place(relx=0.03, rely=0.1, relwidth=0.25, relheight=0.065)
    
    #Botón para conectarse al dispositivo
    global connect_btn
    connect_btn = tk.Button(frame2, text="Conectar", command= lambda: conectar(rf_coms, loop))
    connect_btn.place(relx = 0.15, rely = 0.5, anchor = tk.CENTER)
    
    #Botón para iniciar a medir
    global medir_btn
    medir_btn = tk.Button(frame2, text="Iniciar medición", state = tk.DISABLED, command=  lambda: medir(rf_coms, loop))
    medir_btn.place(relx = 0.8, rely = 0.5, anchor = tk.CENTER)
    
    
    #-------------------TRAINING------------------------#
    
    frame3=tk.Frame(root, relief=tk.RAISED, bg='#2E5D94', bd=5)
    frame3.place(relx=0.55, rely=0.2, relwidth=0.4, relheight=0.4)
    
    #Texto frame entrenamiento
    entrena_l = tk.Label(frame3, text="Entrenamiento", font=("Times New Roman",15), fg= "#FFFFFF", bg='#2E5D94')
    entrena_l.place(relx = 0.5, rely = 0.05, anchor=tk.CENTER)
    
    #Botón para elegir características
    global caract_btn
    caract_btn = tk.Button(frame3, text="Elegir características", state = tk.DISABLED, command =  lambda: abrir_archivo_caract(root))
    caract_btn.place(relx = 0.12, rely = 0.2, anchor = tk.CENTER)
    
    #Botón para elegir archivo clases
    global clases_btn
    clases_btn = tk.Button(frame3, text="Elegir clases", state = tk.DISABLED, command =  lambda: abrir_archivo_clases(root))
    clases_btn.place(relx = 0.12, rely = 0.4, anchor = tk.CENTER)
    
    #Campo de selección donde se muestra la dirección del archivo con las características
    global nombre_archivo_caract
    nombre_archivo_caract=tk.Entry(frame3, width=60)
    nombre_archivo_caract.place(relx = 0.25, rely = 0.16)
    
    #Campo de selección donde se muestra la dirección del archivo con las clases
    global nombre_archivo_clases
    nombre_archivo_clases=tk.Entry(frame3, width=60)
    nombre_archivo_clases.place(relx = 0.25, rely = 0.36)
    
    #Botón para entrenar 
    global entr_btn
    entr_btn = tk.Button(frame3, text="Entrenar", bg = "#D3323F", state = tk.DISABLED, command =  lambda: entrenar(rf_coms))
    entr_btn.place(relx = 0.5, rely = 0.65, anchor = tk.CENTER)
    
    #Botón para enviar parámetros LDA, fisher y SFFS
    global enviar_parametros_clasific_btn
    enviar_parametros_clasific_btn = tk.Button(frame3, text="Enviar parámetros", state = tk.DISABLED, command =  lambda: param_entrena(rf_coms, loop))
    enviar_parametros_clasific_btn.place(relx = 0.85, rely = 0.85, anchor = tk.CENTER)
    
    
    
    #-------------------BOTONES GRÁFICA Y MANIQUÍ------------------------#
    #Botón para mostrar gráfica
    global grafica_btn
    grafica_btn = tk.Button(root, text="Mostrar grafica", state = tk.DISABLED, command = grafica)
    grafica_btn.place(relx = 0.09, rely = 0.7, anchor = tk.CENTER)
    
    #Botón para mostrar el Maniquí
    global maniqui_btn
    maniqui_btn = tk.Button(root, text="Esquema SAM", state = tk.DISABLED, command = maniqui)
    maniqui_btn.place(relx = 0.3, rely = 0.7, anchor = tk.CENTER)
    
    #-------------------BOTÓN BORRAR HISTORIAL------------------------#
    #Botón para borrar los archivos
    borrar_btn = tk.Button(root, text="Borrar historial", bg = "#D3323F", command = borrar_hist)
    borrar_btn.place(relx = 0.85, rely = 0.13, anchor = tk.CENTER)
    
    #-------------------TEXTO NOTA------------------------#
    #Nota
    nota_l = tk.Label(root, fg= "#FFFFFF", text="Nota: Antes de presionar el botón de iniciar medición debe colocar el dedo sobre el sensor \n hasta que se apague el LED blanco", font="Helvetica 10 bold", bg='#2E5D94')
    nota_l.place(relx = 0.53, rely = 0.125, anchor=tk.CENTER)
    
#------------------FUNCIONES BOTONES CONECTAR Y MEDIR------------------------#
    
#Función que se ejecuta cuando se aprieta el botón "Conectar"
def conectar(rf_coms, loop):
    global toggle_conectar
    #Acitva los botones cuando se conecta el dispositivo
    if toggle_conectar == 1:
       connect_btn['text']="Conectado"
       connect_btn['bg'] = "green"
       enviar_parametros_config_btn['state'] = tk.ACTIVE
       entr_btn['state'] = tk.ACTIVE
       caract_btn['state'] = tk.ACTIVE
       clases_btn['state'] = tk.ACTIVE
       grafica_btn['state'] = tk.ACTIVE
       maniqui_btn['state'] = tk.ACTIVE
       medir_btn['state'] = tk.ACTIVE
       toggle_conectar = 0
       # Establish connection with BLE module
       loop.create_task(rf_coms.manager(), name="Task2")
       
   #Desactiva los botones cuando se desconecta el dispositivo
    else:
       connect_btn['text']="Conectar"
       connect_btn['bg'] = "white"
       enviar_parametros_config_btn['state'] = tk.DISABLED
       medir_btn['state'] = tk.DISABLED
       entr_btn['state'] = tk.DISABLED
       caract_btn['state'] = tk.DISABLED
       clases_btn['state'] = tk.DISABLED
       enviar_parametros_clasific_btn['state'] = tk.DISABLED
       grafica_btn['state'] = tk.DISABLED
       maniqui_btn['state'] = tk.DISABLED
       medir_btn['state'] = tk.DISABLED
       toggle_conectar = 1
       #Disconnect from BLW module
       loop.create_task(rf_coms.cleanup(), name="Task3")
       
       
       
#Función que se ejecuta al presionar el botón "Iniciar medición"
def medir(rf_coms, loop):
    global toggle_medir
    #Si se está en modo entrenamiento y no se ha seleccionado al menos una señal fisiológica
    #entonces no se puede comenzar a medir 
    if(ppg.get() == 0 and eda.get() == 0 and modo_texto['text']=="Modo entrenamiento"):
            messagebox.showerror("Error", "Debe seleccionar al menos una señal fisiológica para comenzar a medir")
    else:
            if toggle_medir == 1:
               medir_btn['text']="Detener medición"
               medir_btn['bg'] = "red"
               enviar_parametros_config_btn['state'] = tk.DISABLED
               enviar_parametros_clasific_btn['state'] = tk.DISABLED
               toggle_medir = 0
               #Activa bit 5 de configuración (Iniciar medición)
               rf_coms.Config |= 0xA0 
               
            else:
               medir_btn['text']="Iniciar medición"
               medir_btn['bg'] = "white"
               enviar_parametros_config_btn['state'] = tk.ACTIVE
               toggle_medir = 1
               #Desactiva bit 5 de configuración (Detener medición)
               rf_coms.Config &= 0x5F 
               
            #Send Config register to start measurement
            loop.create_task(rf_coms.Send_Start_Measurement(), name="Task4")
    
       
#-------------------FUNCIONES DE CONFIGURACIÓN------------------------#   

#Función que ejecuta cuando se selecciona un modo con un Radiobutton       
def selec_modo():
    #Si el modo selecciondo es prueba se deshabilita la selección
    #de señales fisiológicas y el botón para mostrar el maniquí
    if modo.get() == "prueba":
        ck_PPG['state'] = tk.DISABLED
        ck_EDA['state'] = tk.DISABLED
        maniqui_btn['state'] = tk.DISABLED
    #Si el modo seleccionado es entrenamiento se habilitan las señales fisiológicas
    #y el maniquí
    else:
        ck_PPG['state'] = tk.ACTIVE
        ck_EDA['state'] = tk.ACTIVE
        maniqui_btn['state'] = tk.ACTIVE

#Función que se ejecuta al presionar el botón de "Enviar configuración"
#Verifica que todos los datos ingresados sean válidos
def verif_config(rf_coms, loop):
    if modo.get() == "prueba":
        #Se llama función para modificar el registro de configuración 
        enviar_config(rf_coms, loop)
        messagebox.showinfo("Mensaje de parámetros", "Parámetros enviados")
        modo_texto.config(text="Modo " + modo.get())
    else:
        if(ppg.get() == 0 and eda.get() == 0):
            messagebox.showerror("Error", "Debe seleccionar al menos una señal fisiológica")
        else:
            #Se llama función para modificar el registro de configuración 
            enviar_config(rf_coms, loop)
            messagebox.showinfo("Mensaje de parámetros", "Parámetros enviados")
            modo_texto.config(text="Modo " + modo.get())
            
def enviar_config(rf_coms, loop):   
    #Bit 2 de configuración activar/desactivar RGB
    if rgb.get() == 1:
       rf_coms.Config |= 0x04
    else:
       rf_coms.Config &= 0xFB
        
    #Bit 3 y 4 de configuración dependiendo del modo
    #entrenamiento -> 00
    if(modo.get() == "entrenamiento"):
        rf_coms.Config &= 0xE7
        #Bit 0 y 1 de configuración dependiendo de las SF seleccionadas
        #Solo PPG -> 00
        if(ppg.get() == 1 and eda.get() == 0):
            rf_coms.Config &= 0xFC
        #Solo EDA -> 01
        elif(ppg.get() == 0 and eda.get() == 1):
            rf_coms.Config |= 0x01
            rf_coms.Config &= 0xFD
        #EDA y PPG -> 10
        else:
            rf_coms.Config |= 0x02
            rf_coms.Config &= 0xFE
    else:
        #prueba -> 01
        if(modo.get() == "prueba"):
            rf_coms.Config |= 0x08
            rf_coms.Config &= 0xEF
        #correccion -> 10
        else:
            rf_coms.Config |= 0x10
            rf_coms.Config &= 0xF7
            
    #Send Configuration register
    loop.create_task(rf_coms.Send_Config(), name="Task5")
        
        
#-------------------FUNCIONES ENTRENAMIENTO------------------------#
    
#Función que se ejecuta cuando se presiona el botón "Elegir características"
def abrir_archivo_caract(root):
    global mi_imagen
    global filename_features
    #Primer parámetro es la dirección inicial donde va a buscar
    #El titulo aparece en la parte superior izquierda
    #El tercer parámetro le dices qué tipo de archivos buscar
    root.filename = filedialog.askopenfilename(initialdir ="/archivos", title= "Selecciona un archivo", filetypes=(("all files", "*.*"), ("txt files", "*.txt")))
    filename_features = root.filename
    nombre_archivo_caract.insert(0, root.filename)

#Función que se ejecuta cuando se presiona el botón "Elegir clases"    
def abrir_archivo_clases(root):
    global mi_imagen
    global filename_targets
    #Primer parámetro es la dirección inicial donde va a buscar
    #El titulo aparece en la parte superior izquierda
    #El tercer parámetro le dices qué tipo de archivos buscar
    root.filename = filedialog.askopenfilename(initialdir ="/archivos", title= "Selecciona un archivo", filetypes=(("all files", "*.*"), ("txt files", "*.txt")))
    filename_targets = root.filename
    nombre_archivo_clases.insert(0, root.filename)

    
#Función que se ejecuta cuando se presiona el botón de "Entrenar"
def entrenar(rf_coms):
    #Si no se ha elegido el archivo con las características se muestra un mensaje indicando
    #que se debe elegir
    if nombre_archivo_caract.get() == '':
        messagebox.showinfo("Mensaje de archivo", "Elija un archivo de características" )
    #Si no se ha elegido el archivo con las clases se muestra un mensaje indicando
    #que se debe elegir 
    elif nombre_archivo_clases.get() == '':
        messagebox.showinfo("Mensaje de archivo", "Elija un archivo de clases" )
    #Si ya se eligieron ambos archivos se muestra un mensaje de que se ha entrenado al sistema
    else: 
        #Función de EMDC para entrenar 
        rf_coms.Chars_Asig, rf_coms.FLD_W, rf_coms.Mean_Vect, rf_coms.Pik_Vect, rf_coms.Cov_S_Inv=train(filename_features,filename_targets)
        messagebox.showinfo("Mensaje de entrenamiento", "Sistema entrenado" )
        enviar_parametros_clasific_btn['state'] = tk.ACTIVE

#Función que se ejecuta al presionar el botón "Enviar parámetros"
def param_entrena(rf_coms, loop):
     #Send classification parameters
     loop.create_task(rf_coms.Send_Clasif_Parameters(), name="Task6")
     messagebox.showinfo("Mensaje de parametros", "Parámetros enviados" )
     
     
#-------------------FUNCIONES BOTONES GRÁFICA Y MANIQUÍ------------------------#

#Función que se ejecuta al presionar el botón de "Mostar gráfica"
def grafica():
    ventana_grafica = tk.Tk()
    ventana_grafica.title("Gráfica emociones")
    
    data2 = {'Tiempo [s]': [1920,1930,1940,1950,1960,1970,1980,1990,2000,2010],
         'Voltaje [V]': [9.8,12,8,7.2,6.9,7,6.5,6.2,5.5,6.3]
        }
    
    df2 = DataFrame(data2,columns=['Tiempo [s]','Voltaje [V]'])
    
    #dots per inch (dpi)
    # 5 horizontal
    # 4 vertical
    figure2 = plt.Figure(figsize=(5,4), dpi=100)
    #Grid parameters 111 = 1x1
    ax2 = figure2.add_subplot(111)
    line2 = FigureCanvasTkAgg(figure2, ventana_grafica)
    line2.get_tk_widget().pack(side=tk.LEFT, fill=tk.BOTH)
    df2 = df2[['Tiempo [s]','Voltaje [V]']].groupby('Tiempo [s]').sum()
    df2.plot(kind='line', legend=True, ax=ax2, color='r',marker='o', fontsize=10)
    ax2.set_title('Tiempo Vs. Voltaje')

#Función que se ejecuta la presionar el botón "Esquema SAM"
def maniqui():
    global ventana_maniqui
    global registros_btn
    ventana_maniqui= tk.Toplevel()
    ventana_maniqui.geometry("664x400")
    ventana_maniqui.title("Esquema SAM")
    
    #SAM image 
    global imagen_SAM
    imagen_SAM=ImageTk.PhotoImage(Image.open("Maniqui.jpg"))
    maniqui_img = tk.Label(ventana_maniqui, image=imagen_SAM)
    maniqui_img.place(relx = 0.5, rely = 0.45, anchor = tk.CENTER)
    
    #Boton para guardar datos del maniqui
    registrar_btn = tk.Button(ventana_maniqui, text="Registrar", bg='#D3323F', command = agregar)
    registrar_btn.place(relx = 0.5, rely = 0.95, anchor = tk.CENTER)
    
    #Variables para grado de valencia y excitación 
    global valencia
    valencia = tk.IntVar()
    valencia.set(1)

    global excitacion
    excitacion = tk.IntVar()
    excitacion.set(1)
    
    global texto_registro
    texto_registro = tk.Label(ventana_maniqui, text="Registros: " + str(num_reg))
    texto_registro.place(relx = 0.05, rely = 0.9)
   
    #Opciones para grado de valencia
    Val1 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 1)
    Val1.place(relx = 0.05, rely = 0.395)
    Val2 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 2)
    Val2.place(relx = 0.15, rely = 0.395)
    Val3 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 3)
    Val3.place(relx = 0.25, rely = 0.395)
    Val4 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 4)
    Val4.place(relx = 0.35, rely = 0.395)
    Val5 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 5)
    Val5.place(relx = 0.45, rely = 0.395)
    Val6 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 6)
    Val6.place(relx = 0.55, rely = 0.395)
    Val7 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 7)
    Val7.place(relx = 0.65, rely = 0.395)
    Val8 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 8)
    Val8.place(relx = 0.75, rely = 0.395)
    Val9 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = valencia, value = 9)
    Val9.place(relx = 0.85, rely = 0.395)
    
    #Opciones para el grado de excitación
    Ex1 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 1)
    Ex1.place(relx = 0.05, rely = 0.812)
    Ex2 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 2)
    Ex2.place(relx = 0.15, rely = 0.812)
    Ex3 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 3)
    Ex3.place(relx = 0.25, rely = 0.812)
    Ex4 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 4)
    Ex4.place(relx = 0.35, rely = 0.812)
    Ex5 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 5)
    Ex5.place(relx = 0.45, rely = 0.812)
    Ex6 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 6)
    Ex6.place(relx = 0.55, rely = 0.812)
    Ex7 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 7)
    Ex7.place(relx = 0.65, rely = 0.812)
    Ex8 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 8)
    Ex8.place(relx = 0.75, rely = 0.812)
    Ex9 = tk.Radiobutton(ventana_maniqui, bg='#FFFFFF', activebackground ='#FFFFFF', variable = excitacion, value = 9)
    Ex9.place(relx = 0.85, rely = 0.812)
     
def borrar_hist():
    #Leer archivo caract
    features = read_csv(filename_features)
    #Ver cuántas muestras tiene el archivo
    samples=len(features)
    for i in range(samples):
        features.drop(index=(len(features)-1), inplace=True)
    features.to_csv(filename_features, index=False)
        
    #Leer archivo clases
    targets = read_csv(filename_targets)
    
    #Ver cuántas muestras tiene el archivo
    samples=len(targets)
    for i in range(samples):
        targets.drop(index=(len(targets)-1), inplace=True)
    targets.to_csv(filename_targets, index=False)
    
    messagebox.showinfo("Mensaje de parámetros", "Historial borrado")

#Función que se ejecuta al presionar el botón de "Registrar" en la ventana del maniquí
def agregar():
    global num_reg
    #Aumenta el número de registros cuando se presiona el botón
    num_reg = num_reg + 1
    texto_registro = tk.Label(ventana_maniqui, text="Registros: " + str(num_reg))
    texto_registro.place(relx = 0.05, rely = 0.9)

#Función que se ejecuta cuando se trata de cerrar la ventana principal
def on_close(root,loop):
     close = messagebox.askokcancel("Salir", "¿Está seguro de que quiere salir?")
     if close:
         loop.stop() 
         root.destroy()