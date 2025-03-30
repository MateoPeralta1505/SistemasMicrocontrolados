
_letras:

;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,12 :: 		sub procedure letras          'Inicio de procedimiento "letras"
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,14 :: 		case "A" dato = 119          'Dar una condición al caso "A"
	MOVF       _caracter+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L__letras4
	MOVLW      119
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras4:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,15 :: 		case "H" dato = 118          'Dar una condición al caso "H"
	MOVF       _caracter+0, 0
	XORLW      72
	BTFSS      STATUS+0, 2
	GOTO       L__letras7
	MOVLW      118
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras7:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,16 :: 		case "O" dato = 63           'Dar una condición al caso "O"
	MOVF       _caracter+0, 0
	XORLW      79
	BTFSS      STATUS+0, 2
	GOTO       L__letras10
	MOVLW      63
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras10:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,17 :: 		case "L" dato = 56           'Dar una condición al caso "L"
	MOVF       _caracter+0, 0
	XORLW      76
	BTFSS      STATUS+0, 2
	GOTO       L__letras13
	MOVLW      56
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras13:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,18 :: 		case "U" dato = 62           'Dar una condición al caso "U"
	MOVF       _caracter+0, 0
	XORLW      85
	BTFSS      STATUS+0, 2
	GOTO       L__letras16
	MOVLW      62
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras16:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,19 :: 		case "E" dato = 121          'Dar una condición al caso "E"
	MOVF       _caracter+0, 0
	XORLW      69
	BTFSS      STATUS+0, 2
	GOTO       L__letras19
	MOVLW      121
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras19:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,20 :: 		case "T" dato = 120          'Dar una condición al caso "T"
	MOVF       _caracter+0, 0
	XORLW      84
	BTFSS      STATUS+0, 2
	GOTO       L__letras22
	MOVLW      120
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras22:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,21 :: 		case "S" dato = 109          'Dar una condición al caso "S"
	MOVF       _caracter+0, 0
	XORLW      83
	BTFSS      STATUS+0, 2
	GOTO       L__letras25
	MOVLW      109
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras25:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,22 :: 		case "P" dato = 115          'Dar una condición al caso "P"
	MOVF       _caracter+0, 0
	XORLW      80
	BTFSS      STATUS+0, 2
	GOTO       L__letras28
	MOVLW      115
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras28:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,23 :: 		case "I" dato = 48           'Dar una condición al caso "I"
	MOVF       _caracter+0, 0
	XORLW      73
	BTFSS      STATUS+0, 2
	GOTO       L__letras31
	MOVLW      48
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras31:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,24 :: 		case "C" dato = 57           'Dar una condición al caso "C"
	MOVF       _caracter+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L__letras34
	MOVLW      57
	MOVWF      _dato+0
	GOTO       L__letras1
L__letras34:
L__letras1:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,26 :: 		end sub         'Fin del procedimiento "letras"
L_end_letras:
	RETURN
; end of _letras

_numeros:

;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,28 :: 		sub procedure numeros    'Inicio de procedimiento "numeros"
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,30 :: 		case 0 dato = 63      'Dar una condición al caso "0"
	MOVF       _digito+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__numeros39
	MOVLW      63
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros39:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,31 :: 		case 1 dato = 6       'Dar una condición al caso "1"
	MOVF       _digito+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__numeros42
	MOVLW      6
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros42:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,32 :: 		case 2 dato = 91      'Dar una condición al caso "2"
	MOVF       _digito+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__numeros45
	MOVLW      91
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros45:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,33 :: 		case 3 dato = 79      'Dar una condición al caso "3"
	MOVF       _digito+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__numeros48
	MOVLW      79
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros48:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,34 :: 		case 4 dato = 102     'Dar una condición al caso "4"
	MOVF       _digito+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__numeros51
	MOVLW      102
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros51:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,35 :: 		case 5 dato = 109     'Dar una condición al caso "5"
	MOVF       _digito+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L__numeros54
	MOVLW      109
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros54:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,36 :: 		case 6 dato = 125     'Dar una condición al caso "6"
	MOVF       _digito+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L__numeros57
	MOVLW      125
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros57:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,37 :: 		case 7 dato = 7       'Dar una condición al caso "7"
	MOVF       _digito+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L__numeros60
	MOVLW      7
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros60:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,38 :: 		case 8 dato = 127     'Dar una condición al caso "8"
	MOVF       _digito+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__numeros63
	MOVLW      127
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros63:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,39 :: 		case 9 dato = 111     'Dar una condición al caso "9"
	MOVF       _digito+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L__numeros66
	MOVLW      111
	MOVWF      _dato+0
	GOTO       L__numeros36
L__numeros66:
L__numeros36:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,41 :: 		end sub         'Fin de procedimiento "numeros"
L_end_numeros:
	RETURN
; end of _numeros

_main:

;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,43 :: 		main:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,45 :: 		trisb=0  'Configurar puerto b como salida
	CLRF       TRISB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,46 :: 		trisd=0  'Configurar puerto d como salida
	CLRF       TRISD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,47 :: 		portb=0  'Puerto b inicia apagado
	CLRF       PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,48 :: 		portd=0  'Puerto d inicia apagado
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,49 :: 		anselh=0 'Configuración del puerto b como digital
	CLRF       ANSELH+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,51 :: 		while (1)               'Inicio de bucle infinito
L__main69:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,52 :: 		For contaaux = 0 to 255   'Inicio bucle for para mostrar "HOLA" en el display de 4 dígitos por aproximadamente 2 segundos
	CLRF       _contaaux+0
L__main74:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,53 :: 		caracter = "H"  'Definir un dato inicial a la variable "caracter"
	MOVLW      72
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,54 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,55 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,56 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,57 :: 		portd = 0x10     'Cerrar el transistor del primer display
	MOVLW      16
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,58 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main78:
	DECFSZ     R13+0, 1
	GOTO       L__main78
	DECFSZ     R12+0, 1
	GOTO       L__main78
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,60 :: 		caracter = "O"   'Definir un dato inicial a la variable "caracter"
	MOVLW      79
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,61 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,62 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,63 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,64 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,65 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main79:
	DECFSZ     R13+0, 1
	GOTO       L__main79
	DECFSZ     R12+0, 1
	GOTO       L__main79
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,67 :: 		caracter = "L"   'Definir un dato inicial a la variable "caracter"
	MOVLW      76
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,68 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,69 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,70 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,71 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,72 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main80:
	DECFSZ     R13+0, 1
	GOTO       L__main80
	DECFSZ     R12+0, 1
	GOTO       L__main80
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,74 :: 		caracter = "A"   'Definir un dato inicial a la variable "caracter"
	MOVLW      65
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,75 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,76 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,77 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,78 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,79 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main81:
	DECFSZ     R13+0, 1
	GOTO       L__main81
	DECFSZ     R12+0, 1
	GOTO       L__main81
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,80 :: 		next contaaux        'Fin bucle for para mostrar "HOLA" en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__main77
	INCF       _contaaux+0, 1
	GOTO       L__main74
L__main77:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,82 :: 		portd = 0        'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,83 :: 		delay_ms(500)    'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main82:
	DECFSZ     R13+0, 1
	GOTO       L__main82
	DECFSZ     R12+0, 1
	GOTO       L__main82
	DECFSZ     R11+0, 1
	GOTO       L__main82
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,85 :: 		digito = 0       'Definir un dato inicial a la variable "digito"
	CLRF       _digito+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,86 :: 		numeros          'Llamar al procedimiento "numeros"
	CALL       _numeros+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,87 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,88 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,89 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,90 :: 		delay_ms(400)    'Retraso de 400ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L__main83:
	DECFSZ     R13+0, 1
	GOTO       L__main83
	DECFSZ     R12+0, 1
	GOTO       L__main83
	DECFSZ     R11+0, 1
	GOTO       L__main83
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,92 :: 		digito = 1       'Definir un dato inicial a la variable "digito"
	MOVLW      1
	MOVWF      _digito+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,93 :: 		numeros          'Llamar al procedimiento "numeros"
	CALL       _numeros+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,94 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,95 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,96 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,97 :: 		delay_ms(400)    'Retraso de 400ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L__main84:
	DECFSZ     R13+0, 1
	GOTO       L__main84
	DECFSZ     R12+0, 1
	GOTO       L__main84
	DECFSZ     R11+0, 1
	GOTO       L__main84
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,99 :: 		digito = 2       'Definir un dato inicial a la variable "digito"
	MOVLW      2
	MOVWF      _digito+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,100 :: 		numeros          'Llamar al procedimiento "numeros"
	CALL       _numeros+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,101 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,102 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,103 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,104 :: 		delay_ms(400)    'Retraso de 400ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L__main85:
	DECFSZ     R13+0, 1
	GOTO       L__main85
	DECFSZ     R12+0, 1
	GOTO       L__main85
	DECFSZ     R11+0, 1
	GOTO       L__main85
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,106 :: 		digito = 3       'Definir un dato inicial a la variable "digito"
	MOVLW      3
	MOVWF      _digito+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,107 :: 		numeros          'Llamar al procedimiento "numeros"
	CALL       _numeros+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,108 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,109 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,110 :: 		portd = 0x10     'Cerrar el transistor del primer display
	MOVLW      16
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,111 :: 		delay_ms(400)    'Retraso de 400ms
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L__main86:
	DECFSZ     R13+0, 1
	GOTO       L__main86
	DECFSZ     R12+0, 1
	GOTO       L__main86
	DECFSZ     R11+0, 1
	GOTO       L__main86
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,113 :: 		portd=0          'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,114 :: 		delay_ms(500)    'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main87:
	DECFSZ     R13+0, 1
	GOTO       L__main87
	DECFSZ     R12+0, 1
	GOTO       L__main87
	DECFSZ     R11+0, 1
	GOTO       L__main87
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,116 :: 		For veces = 0 to 2      'Inicio bucle for para mostrar "PIC " con recorrido ida y vuelta en el display de 4 dígitos
	CLRF       _veces+0
L__main89:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,117 :: 		For contaaux = 0 to 100       'Inicio bucle for para mostrar "P   " en el display de 4 dígitos
	CLRF       _contaaux+0
L__main94:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,118 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,119 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,120 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,121 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,122 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,123 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main98:
	DECFSZ     R13+0, 1
	GOTO       L__main98
	DECFSZ     R12+0, 1
	GOTO       L__main98
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,124 :: 		next contaaux       'Fin bucle for para mostrar "P   " en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main97
	INCF       _contaaux+0, 1
	GOTO       L__main94
L__main97:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,126 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar "PI   " en el display de 4 dígitos
	CLRF       _contaaux+0
L__main100:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,127 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,128 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,129 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,130 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,131 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,132 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main104:
	DECFSZ     R13+0, 1
	GOTO       L__main104
	DECFSZ     R12+0, 1
	GOTO       L__main104
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,134 :: 		caracter = "I"   'Definir un dato inicial a la variable "caracter"
	MOVLW      73
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,135 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,136 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,137 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,138 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,139 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main105:
	DECFSZ     R13+0, 1
	GOTO       L__main105
	DECFSZ     R12+0, 1
	GOTO       L__main105
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,140 :: 		next contaaux       'Fin bucle for para mostrar "PI   " en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main103
	INCF       _contaaux+0, 1
	GOTO       L__main100
L__main103:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,142 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar " PIC" en el display de 4 dígitos
	CLRF       _contaaux+0
L__main107:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,143 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,144 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,145 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,146 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,147 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,148 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main111:
	DECFSZ     R13+0, 1
	GOTO       L__main111
	DECFSZ     R12+0, 1
	GOTO       L__main111
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,150 :: 		caracter = "I"   'Definir un dato inicial a la variable "caracter"
	MOVLW      73
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,151 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,152 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,153 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,154 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,155 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main112:
	DECFSZ     R13+0, 1
	GOTO       L__main112
	DECFSZ     R12+0, 1
	GOTO       L__main112
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,157 :: 		caracter = "C"   'Definir un dato inicial a la variable "caracter"
	MOVLW      67
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,158 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,159 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,160 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,161 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,162 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main113:
	DECFSZ     R13+0, 1
	GOTO       L__main113
	DECFSZ     R12+0, 1
	GOTO       L__main113
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,163 :: 		next contaaux       'Fin bucle for para mostrar " PIC" en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main110
	INCF       _contaaux+0, 1
	GOTO       L__main107
L__main110:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,165 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar "PIC " en el display de 4 dígitos
	CLRF       _contaaux+0
L__main115:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,166 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,167 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,168 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,169 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,170 :: 		portd = 0x10     'Cerrar el transistor del primer display
	MOVLW      16
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,171 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main119:
	DECFSZ     R13+0, 1
	GOTO       L__main119
	DECFSZ     R12+0, 1
	GOTO       L__main119
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,173 :: 		caracter = "I"   'Definir un dato inicial a la variable "caracter"
	MOVLW      73
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,174 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,175 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,176 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,177 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,178 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main120:
	DECFSZ     R13+0, 1
	GOTO       L__main120
	DECFSZ     R12+0, 1
	GOTO       L__main120
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,180 :: 		caracter = "C"   'Definir un dato inicial a la variable "caracter"
	MOVLW      67
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,181 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,182 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,183 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,184 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,185 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main121:
	DECFSZ     R13+0, 1
	GOTO       L__main121
	DECFSZ     R12+0, 1
	GOTO       L__main121
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,186 :: 		next contaaux       'Fin bucle for para mostrar "PIC " en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main118
	INCF       _contaaux+0, 1
	GOTO       L__main115
L__main118:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,188 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar " PIC" en el display de 4 dígitos
	CLRF       _contaaux+0
L__main123:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,189 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,190 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,191 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,192 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,193 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,194 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main127:
	DECFSZ     R13+0, 1
	GOTO       L__main127
	DECFSZ     R12+0, 1
	GOTO       L__main127
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,196 :: 		caracter = "I"   'Definir un dato inicial a la variable "caracter"
	MOVLW      73
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,197 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,198 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,199 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,200 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,201 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main128:
	DECFSZ     R13+0, 1
	GOTO       L__main128
	DECFSZ     R12+0, 1
	GOTO       L__main128
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,203 :: 		caracter = "C"   'Definir un dato inicial a la variable "caracter"
	MOVLW      67
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,204 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,205 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,206 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,207 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,208 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main129:
	DECFSZ     R13+0, 1
	GOTO       L__main129
	DECFSZ     R12+0, 1
	GOTO       L__main129
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,209 :: 		next contaaux       'Fin bucle for para mostrar " PIC" en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main126
	INCF       _contaaux+0, 1
	GOTO       L__main123
L__main126:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,211 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar "  PI" en el display de 4 dígitos
	CLRF       _contaaux+0
L__main131:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,212 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,213 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,214 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,215 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,216 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,217 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main135:
	DECFSZ     R13+0, 1
	GOTO       L__main135
	DECFSZ     R12+0, 1
	GOTO       L__main135
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,219 :: 		caracter = "I"   'Definir un dato inicial a la variable "caracter"
	MOVLW      73
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,220 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,221 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,222 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,223 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,224 :: 		delay_ms(2)    'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main136:
	DECFSZ     R13+0, 1
	GOTO       L__main136
	DECFSZ     R12+0, 1
	GOTO       L__main136
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,225 :: 		next contaaux       'Fin bucle for para mostrar "  PI" en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main134
	INCF       _contaaux+0, 1
	GOTO       L__main131
L__main134:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,227 :: 		For contaaux = 0 to 100  'Inicio bucle for para mostrar "   P" en el display de 4 dígitos
	CLRF       _contaaux+0
L__main138:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,228 :: 		caracter = "P"   'Definir un dato inicial a la variable "caracter"
	MOVLW      80
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,229 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,230 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,231 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,232 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,233 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main142:
	DECFSZ     R13+0, 1
	GOTO       L__main142
	DECFSZ     R12+0, 1
	GOTO       L__main142
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,234 :: 		next contaaux       'Fin bucle for para mostrar "   P" en el display de 4 dígitos
	MOVF       _contaaux+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L__main141
	INCF       _contaaux+0, 1
	GOTO       L__main138
L__main141:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,235 :: 		portd=0        'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,236 :: 		delay_ms(350)  'Retraso de 350ms
	MOVLW      9
	MOVWF      R11+0
	MOVLW      225
	MOVWF      R12+0
	MOVLW      178
	MOVWF      R13+0
L__main143:
	DECFSZ     R13+0, 1
	GOTO       L__main143
	DECFSZ     R12+0, 1
	GOTO       L__main143
	DECFSZ     R11+0, 1
	GOTO       L__main143
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,237 :: 		next veces              'Fin bucle for para mostrar "PIC " con recorrido ida y vuelta en el display de 4 dígitos
	MOVF       _veces+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L__main92
	INCF       _veces+0, 1
	GOTO       L__main89
L__main92:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,239 :: 		delay_ms(500)      'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main144:
	DECFSZ     R13+0, 1
	GOTO       L__main144
	DECFSZ     R12+0, 1
	GOTO       L__main144
	DECFSZ     R11+0, 1
	GOTO       L__main144
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,241 :: 		For veces = 0 to 1 'Inicio bucle for para mostrar parpadeo de "UETS" en el display de 4 dígitos
	CLRF       _veces+0
L__main146:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,242 :: 		For contaaux = 0 to 25     'Inicio bucle for desde 0 a 25
	CLRF       _contaaux+0
L__main151:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,243 :: 		caracter = "U"   'Definir un dato inicial a la variable "caracter"
	MOVLW      85
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,244 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,245 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,246 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,247 :: 		portd = 0x10     'Cerrar el transistor del primer display
	MOVLW      16
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,248 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main155:
	DECFSZ     R13+0, 1
	GOTO       L__main155
	DECFSZ     R12+0, 1
	GOTO       L__main155
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,250 :: 		caracter = "E"   'Definir un dato inicial a la variable "caracter"
	MOVLW      69
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,251 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,252 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,253 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,254 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,255 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main156:
	DECFSZ     R13+0, 1
	GOTO       L__main156
	DECFSZ     R12+0, 1
	GOTO       L__main156
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,257 :: 		caracter = "T"   'Definir un dato inicial a la variable "caracter"
	MOVLW      84
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,258 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,259 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,260 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,261 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,262 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main157:
	DECFSZ     R13+0, 1
	GOTO       L__main157
	DECFSZ     R12+0, 1
	GOTO       L__main157
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,264 :: 		caracter = "S"   'Definir un dato inicial a la variable "caracter"
	MOVLW      83
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,265 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,266 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,267 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,268 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,269 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main158:
	DECFSZ     R13+0, 1
	GOTO       L__main158
	DECFSZ     R12+0, 1
	GOTO       L__main158
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,270 :: 		next contaaux        'Fin bucle for desde 0 a 25
	MOVF       _contaaux+0, 0
	XORLW      25
	BTFSC      STATUS+0, 2
	GOTO       L__main154
	INCF       _contaaux+0, 1
	GOTO       L__main151
L__main154:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,271 :: 		portd=0              'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,272 :: 		delay_ms(250)        'Retraso de 250ms
	MOVLW      7
	MOVWF      R11+0
	MOVLW      88
	MOVWF      R12+0
	MOVLW      89
	MOVWF      R13+0
L__main159:
	DECFSZ     R13+0, 1
	GOTO       L__main159
	DECFSZ     R12+0, 1
	GOTO       L__main159
	DECFSZ     R11+0, 1
	GOTO       L__main159
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,273 :: 		next veces           'Fin bucle for para mostrar parpadeo de "UETS" en el display de 4 dígitos
	MOVF       _veces+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L__main149
	INCF       _veces+0, 1
	GOTO       L__main146
L__main149:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,275 :: 		delay_ms(500)        'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main160:
	DECFSZ     R13+0, 1
	GOTO       L__main160
	DECFSZ     R12+0, 1
	GOTO       L__main160
	DECFSZ     R11+0, 1
	GOTO       L__main160
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,277 :: 		For conta3 = 0 to 450 'Inicio bucle for para mostrar "HALO" en el display de 4 dígitos por aproximadamente 3 segundos
	CLRF       _conta3+0
	CLRF       _conta3+1
L__main162:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,278 :: 		caracter = "H"   'Definir un dato inicial a la variable "caracter"
	MOVLW      72
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,279 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,280 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,281 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,282 :: 		portd = 0x10     'Cerrar el transistor del primer display
	MOVLW      16
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,283 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main166:
	DECFSZ     R13+0, 1
	GOTO       L__main166
	DECFSZ     R12+0, 1
	GOTO       L__main166
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,285 :: 		caracter = "A"   'Definir un dato inicial a la variable "caracter"
	MOVLW      65
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,286 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,287 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,288 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,289 :: 		portd = 0x20     'Cerrar el transistor del segundo display
	MOVLW      32
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,290 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main167:
	DECFSZ     R13+0, 1
	GOTO       L__main167
	DECFSZ     R12+0, 1
	GOTO       L__main167
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,292 :: 		caracter = "L"   'Definir un dato inicial a la variable "caracter"
	MOVLW      76
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,293 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,294 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,295 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,296 :: 		portd = 0x40     'Cerrar el transistor del tercer display
	MOVLW      64
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,297 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main168:
	DECFSZ     R13+0, 1
	GOTO       L__main168
	DECFSZ     R12+0, 1
	GOTO       L__main168
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,299 :: 		caracter = "O"   'Definir un dato inicial a la variable "caracter"
	MOVLW      79
	MOVWF      _caracter+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,300 :: 		letras           'Llamar al procedimiento "letras"
	CALL       _letras+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,301 :: 		portd = 0        'Abrir los 4 transistores
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,302 :: 		portb = dato     'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,303 :: 		portd = 0x80     'Cerrar el transistor del cuarto display
	MOVLW      128
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,304 :: 		delay_ms(2)      'Retraso de 2ms
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main169:
	DECFSZ     R13+0, 1
	GOTO       L__main169
	DECFSZ     R12+0, 1
	GOTO       L__main169
	NOP
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,305 :: 		next conta3          'Fin bucle for para mostrar "HALO" en el display de 4 dígitos por aproximadamente 3 segundos
	MOVF       _conta3+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main181
	MOVLW      194
	XORWF      _conta3+0, 0
L__main181:
	BTFSC      STATUS+0, 2
	GOTO       L__main165
	INCF       _conta3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _conta3+1, 1
	GOTO       L__main162
L__main165:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,306 :: 		portd=0         'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,307 :: 		delay_ms(500)   'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main170:
	DECFSZ     R13+0, 1
	GOTO       L__main170
	DECFSZ     R12+0, 1
	GOTO       L__main170
	DECFSZ     R11+0, 1
	GOTO       L__main170
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,310 :: 		For contaaux = 0 to 9    'Inicio bucle for de 0 a 9
	CLRF       _contaaux+0
L__main172:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,311 :: 		digito = contaaux    'Definir el dato de una variable "contaaux" a la variable "digito"
	MOVF       _contaaux+0, 0
	MOVWF      _digito+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,312 :: 		numeros              'Llamar al procedimiento "numeros"
	CALL       _numeros+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,313 :: 		portd=0xF0           'Cerrar todos los transistores
	MOVLW      240
	MOVWF      PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,314 :: 		portb = dato         'Definir la variable dato al puerto b
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,315 :: 		delay_ms(500)        'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main176:
	DECFSZ     R13+0, 1
	GOTO       L__main176
	DECFSZ     R12+0, 1
	GOTO       L__main176
	DECFSZ     R11+0, 1
	GOTO       L__main176
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,316 :: 		next contaaux            'Fin bucle for
	MOVF       _contaaux+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L__main175
	INCF       _contaaux+0, 1
	GOTO       L__main172
L__main175:
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,318 :: 		portd=0              'Apagar todos los displays
	CLRF       PORTD+0
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,319 :: 		delay_ms(500)        'Retraso de 500ms
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main177:
	DECFSZ     R13+0, 1
	GOTO       L__main177
	DECFSZ     R12+0, 1
	GOTO       L__main177
	DECFSZ     R11+0, 1
	GOTO       L__main177
	NOP
;SelectCase_Procedimientos_ManejoDisplay4D_gitos.mbas,321 :: 		wend  'Fin bucle infinito
	GOTO       L__main69
L_end_main:
	GOTO       $+0
; end of _main
