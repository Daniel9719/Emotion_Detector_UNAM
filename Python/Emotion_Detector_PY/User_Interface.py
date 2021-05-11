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
from ML.EMDC import EMDC

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
    frame.place(relx=0.03, rely=0.2, relwidth=0.35, relheight=0.4)

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
    
    #Variable para la activación/desactivación del RGB (tipo entero)
    global rgb 
    rgb = tk.IntVar()
    
    #Variable para la activación/desactivación de la transmisión automática (tipo entero)
    global ta 
    ta = tk.IntVar()
    
    #Activar/Desactivar LED RGB
    ck_rgb = tk.Checkbutton(frame, text="Habilitar RGB", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = rgb)
    ck_rgb.place(relx = 0.5, rely = 0.2)
    
    #Activar/Desactivar transmisión automática
    ck_ta = tk.Checkbutton(frame, text="Transmisión Automática", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = ta)
    ck_ta.place(relx = 0.5, rely = 0.35)
    
    #Boton para enviar parámetros configuración
    global enviar_parametros_config_btn
    enviar_parametros_config_btn = tk.Button(frame, text="Enviar configuración", state = tk.DISABLED, command =  lambda: verif_config(rf_coms, loop))
    enviar_parametros_config_btn.place(relx = 0.75, rely = 0.85, anchor = tk.CENTER)
    
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
    frame3.place(relx=0.4, rely=0.2, relwidth=0.5, relheight=0.4)
    
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
    nombre_archivo_caract.place(relx = 0.25, rely = 0.16, relwidth=0.7)
    
    #Campo de selección donde se muestra la dirección del archivo con las clases
    global nombre_archivo_clases
    nombre_archivo_clases=tk.Entry(frame3, width=60)
    nombre_archivo_clases.place(relx = 0.25, rely = 0.36, relwidth=0.7)
    
    #Texto selección tipo entrenamiento
    Tipo_entrena_l = tk.Label(frame3, text="Tipo de entrenamiento", fg= "#FFFFFF", bg='#2E5D94')
    Tipo_entrena_l.place(relx = 0.12, rely = 0.6, anchor=tk.CENTER)
    
    #Variable del tipo de entrenamiento
    global Train
    Train = tk.BooleanVar()
    Train.set(tk.FALSE)
    
    #Opción para tipo de entrenamiento rápido
    global Ent_rap
    Ent_rap = tk.Radiobutton(frame3, text="Entrenamiento rápido", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = Train, value = tk.FALSE)
    Ent_rap.place(relx = 0.02, rely = 0.67)
    
    #Opción para tipo de entrenamiento completo
    global Entr_comp
    Ent_comp = tk.Radiobutton(frame3, text = "Entrenamiento completo", bg='#2E5D94', fg= "#FFFFFF", selectcolor="black", activebackground ='#2E5D94', variable = Train, value = tk.TRUE)
    Ent_comp.place(relx = 0.02, rely = 0.77)
    
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
    nota_l = tk.Label(root, fg= "#FFFFFF", text="Nota: Antes de presionar el botón de iniciar medición debe colocar el dedo sobre el sensor \n hasta que se apague el LED cyan", font="Helvetica 10 bold", bg='#2E5D94')
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

    if toggle_medir == 1:
       medir_btn['text']="Detener medición"
       medir_btn['bg'] = "red"
       enviar_parametros_config_btn['state'] = tk.DISABLED
       enviar_parametros_clasific_btn['state'] = tk.DISABLED
       toggle_medir = 0
       #Activa bit 3 de configuración (Iniciar medición)
       rf_coms.Config |= 0x0C 
    else:
       medir_btn['text']="Iniciar medición"
       medir_btn['bg'] = "white"
       enviar_parametros_config_btn['state'] = tk.ACTIVE
       toggle_medir = 1
       #Desactiva bit 3 de configuración (Detener medición)
       rf_coms.Config &= 0xF3 

       
    #Send Config register to start measurement
    loop.create_task(rf_coms.Send_Start_Measurement(), name="Task4")
    
       
#-------------------FUNCIONES DE CONFIGURACIÓN------------------------#   

#Función que ejecuta cuando se selecciona un modo con un Radiobutton       
def selec_modo():
    #Si el modo selecciondo es prueba se deshabilita el botón para mostrar el 
    #maniquí
    if modo.get() == "prueba":
        maniqui_btn['state'] = tk.DISABLED
    #Si el modo seleccionado es entrenamiento se habilitan el maniquí
    else:
        maniqui_btn['state'] = tk.ACTIVE

#Función que se ejecuta al presionar el botón de "Enviar configuración"
#Verifica que todos los datos ingresados sean válidos
def verif_config(rf_coms, loop):
        #Se llama función para modificar el registro de configuración 
        enviar_config(rf_coms, loop)
        messagebox.showinfo("Mensaje de parámetros", "¿Desea enviar los datos?")
        modo_texto.config(text="Modo " + modo.get())
            
def enviar_config(rf_coms, loop):   
    #Bit 0 de configuración activar/desactivar RGB
    if rgb.get() == 1:
       rf_coms.Config |= 0x01
    else:
       rf_coms.Config &= 0xFE
        
    #Bit 1 de configuración dependiendo del modo
    #entrenamiento -> 0
    if(modo.get() == "entrenamiento"):
        rf_coms.Config &= 0xFD
    else:
    #prueba -> 1
        rf_coms.Config |= 0x02
        
    #Bit 4 de configuración activar/desactivar Transmisión Automática
    if ta.get() == 1:
       rf_coms.Config |= 0x10
    else:
       rf_coms.Config &= 0xEF
            
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
        rf_coms.Chars_Asig, rf_coms.FLD_W, rf_coms.Mean_Vect, rf_coms.Pik_Vect, rf_coms.Cov_S_Inv=EMDC(filename_features,filename_targets,Train.get())
        messagebox.showinfo("Mensaje de entrenamiento", "Sistema entrenado" )
        enviar_parametros_clasific_btn['state'] = tk.ACTIVE

#Función que se ejecuta al presionar el botón "Enviar parámetros"
def param_entrena(rf_coms, loop):
     #Send classification parameters
     loop.create_task(rf_coms.Send_Clasif_Parameters(), name="Task6")
     messagebox.showinfo("Mensaje de parametros", "¿Desea enviar los datos?" )
     
     
#-------------------FUNCIONES BOTONES GRÁFICA Y MANIQUÍ------------------------#

#Función que se ejecuta al presionar el botón de "Mostar gráfica"
def grafica():
    ventana_grafica = tk.Tk()
    ventana_grafica.title("Gráfica de emociones")
    
    Neutro = 0
    VP_EA = 0
    VP_EB = 0
    VN_EA = 0
    VN_EB =0
        
    emotions = read_csv(filename_targets)
    keys_emotions = emotions.keys()
    for j in range (0,len(emotions)):
        emotion = ""
        for i in range(0,3):
            emotion += str(emotions[keys_emotions[i]][j]) 
        if(emotion == "000"):
            VN_EB += 1
        elif(emotion == "001"):
            VN_EA += 1
        elif(emotion == "010"):
            VP_EB += 1
        elif(emotion == "011"):
            VP_EA += 1
        elif(emotion == "100"):
            Neutro += 1
            
        
    data = {'Emoción': ["Neutro", "VP-EA", "VP-EB", "VN-EA", "VN-EB"],
         'Ocurrencia': [Neutro, VP_EA, VP_EB, VN_EA, VN_EB]
        }
    
    df = DataFrame(data,columns=['Emoción','Ocurrencia'])
    
    figure = plt.Figure(figsize=(7,6), dpi=100)
    ax = figure.add_subplot(111)
    bar = FigureCanvasTkAgg(figure, ventana_grafica)
    bar.get_tk_widget().pack(side=tk.LEFT, fill=tk.BOTH)
    df = df[['Emoción','Ocurrencia']].groupby('Emoción').sum()
    df.plot(kind='bar', legend=True, ax=ax, color='r', fontsize=7)
    ax.set_title('Emoción Vs. Ocurrencia')

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
