//   RAMLSx length = 0x3000  (12,288 bytes)
//	 RAMGSx length = 0x10000 (90,112 bytes)
//	 FLASHx length = 0x3FFFE (262,142 bytes)

MEMORY
{
PAGE 0 :  /* Program Memory */
          /* Memory (RAM/FLASH) blocks can be moved to PAGE1 for data allocation */
          /* BEGIN is used for the "boot to Flash" bootloader mode   */

   BEGIN           	: origin = 0x080000, length = 0x000002
   RAMM0           	: origin = 0x000122, length = 0x0002DE		//No usable
   RAMD0           	: origin = 0x00B000, length = 0x000800		//No usable
   RAMLS0          	: origin = 0x008000, length = 0x000800		//Memoria compartida CPU y CLA
   RAMLS1          	: origin = 0x008800, length = 0x000800		//Memoria compartida CPU y CLA
   RAMLS2      		: origin = 0x009000, length = 0x000800		//Memoria compartida CPU y CLA
   RAMLS3      		: origin = 0x009800, length = 0x000800		//Memoria compartida CPU y CLA
   RAMLS4      		: origin = 0x00A000, length = 0x000800		//Memoria compartida CPU y CLA
//   RAMGS14          : origin = 0x01A000, length = 0x001000		//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS15          : origin = 0x01B000, length = 0x001000		//Memoria accesible al CPU1, CPU2 y DMA
   RESET           	: origin = 0x3FFFC0, length = 0x000002
   
   /* Flash sectors */
   FLASHA           : origin = 0x080002, length = 0x001FFE	/* on-chip Flash */
   FLASHB           : origin = 0x082000, length = 0x002000	/* on-chip Flash */
   FLASHC           : origin = 0x084000, length = 0x002000	/* on-chip Flash */
   FLASHD           : origin = 0x086000, length = 0x002000	/* on-chip Flash */
   FLASHE           : origin = 0x088000, length = 0x008000	/* on-chip Flash */
   FLASHF           : origin = 0x090000, length = 0x010000	/* on-chip Flash */
   //FLASHG           : origin = 0x098000, length = 0x008000	/* on-chip Flash */
   FLASHH           : origin = 0x0A0000, length = 0x008000	/* on-chip Flash */
   FLASHI           : origin = 0x0A8000, length = 0x008000	/* on-chip Flash */
   FLASHJ           : origin = 0x0B0000, length = 0x008000	/* on-chip Flash */
   FLASHK           : origin = 0x0B8000, length = 0x002000	/* on-chip Flash */
   FLASHL           : origin = 0x0BA000, length = 0x002000	/* on-chip Flash */
   FLASHM           : origin = 0x0BC000, length = 0x002000	/* on-chip Flash */
   FLASHN           : origin = 0x0BE000, length = 0x002000	/* on-chip Flash */   

PAGE 1 : /* Data Memory */
         /* Memory (RAM/FLASH) blocks can be moved to PAGE0 for program allocation */

   BOOT_RSVD       : origin = 0x000002, length = 0x000120     /* Part of M0, BOOT rom will use this for stack */
   RAMM1           : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMD1           : origin = 0x00B800, length = 0x000800		//No usable

   RAMLS5      : origin = 0x00A800, length = 0x000800			//Memoria compartida CPU y CLA

   RAMGS0      : origin = 0x00C000, length = 0x010000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS1      : origin = 0x00D000, length = 0x001000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS2      : origin = 0x00E000, length = 0x001000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS3      : origin = 0x00F000, length = 0x001000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS4      : origin = 0x010000, length = 0x001000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS5      : origin = 0x011000, length = 0x00B000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS6      : origin = 0x012000, length = 0x001000			//Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS7      : origin = 0x013000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS8      : origin = 0x014000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS9      : origin = 0x015000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS10     : origin = 0x016000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS11     : origin = 0x017000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS12     : origin = 0x018000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA
//   RAMGS13     : origin = 0x019000, length = 0x001000			  //Memoria accesible al CPU1, CPU2 y DMA

   
   CPU2TOCPU1RAM   : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM   : origin = 0x03FC00, length = 0x000400
}


SECTIONS
{
   /* Allocate program areas: */
   .cinit              : > FLASHF     PAGE = 0, ALIGN(4)						//Inicializar var globales de C
   .pinit              : > FLASHB,     PAGE = 0, ALIGN(4)						//Constructores globales para programas de C
 //  .text               : >> FLASHE     PAGE = 0, ALIGN(4)						//Código ejecutable
   .text               : >> RAMLS2     PAGE = 0, ALIGN(4)						//Código ejecutable
   codestart           : > BEGIN       PAGE = 0, ALIGN(4)						//Inicia modo bootloader

#ifdef __TI_COMPILER_VERSION__
   #if __TI_COMPILER_VERSION__ >= 15009000
    .TI.ramfunc : {} LOAD = FLASHD,
                         RUN = RAMLS0 | RAMLS1 | RAMLS2 |RAMLS3,
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_SIZE(_RamfuncsLoadSize),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         RUN_SIZE(_RamfuncsRunSize),
                         RUN_END(_RamfuncsRunEnd),
                         PAGE = 0, ALIGN(4)
   #else
   ramfuncs            : LOAD = FLASHD,
                         RUN = RAMLS0 | RAMLS1 | RAMLS2 |RAMLS3,
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_SIZE(_RamfuncsLoadSize),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         RUN_SIZE(_RamfuncsRunSize),
                         RUN_END(_RamfuncsRunEnd),
                         PAGE = 0, ALIGN(4)   
   #endif
#endif
						 
   /* Allocate uninitalized data sections: */
   .stack              : > RAMM1        PAGE = 1								//Para la pila de llamadas de función
   .ebss               : >> RAMGS0     PAGE = 1									//Variables globales y estáticas
   .esysmem            : > RAMLS5      PAGE = 1									//Asignación memoria dinámica
   .data               : > RAMGS0    PAGE = 1									//Datos inicializados

   /* Initalized sections go in Flash */
   .econst             : >> FLASHF | FLASHH      PAGE = 0, ALIGN(4)	//Datos const de C y declaración e inicialización var globales y estáticas
   .switch             : > FLASHB      PAGE = 0, ALIGN(4)						//Saltos con instrucción switch
//   .cio 			: > FLASHJ, 	PAGE = 0									  //Para funciones de stdio.h
   
   .reset              : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */

	/* CLA SECIONES */
    CLA_Dat          : > RAMLS1,    PAGE = 0
    CLA_Prog         : > RAMLS4,    PAGE = 0
    /* DMA SECIONES */
	DMA_Secc		 : > RAMGS0,	PAGE = 1

   Filter_RegsFile     : > RAMGS0,	   PAGE = 1
   
//   SHARERAMGS0		: > RAMGS0,		PAGE = 1
//   SHARERAMGS1		: > RAMGS1,		PAGE = 1
   
   /* The following section definitions are required when using the IPC API Drivers */ 
    GROUP : > CPU1TOCPU2RAM, PAGE = 1 
    {
        PUTBUFFER 
        PUTWRITEIDX 
        GETREADIDX 
    }
    
    GROUP : > CPU2TOCPU1RAM, PAGE = 1
    {
        GETBUFFER :    TYPE = DSECT
        GETWRITEIDX :  TYPE = DSECT
        PUTREADIDX :   TYPE = DSECT
    }  
    
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
