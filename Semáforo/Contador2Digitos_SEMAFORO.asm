
_numero:

;Contador2Digitos_SEMAFORO.mbas,10 :: 		sub procedure numero (dim valor as byte)     'Procedimiento con llevada "numero"
;Contador2Digitos_SEMAFORO.mbas,12 :: 		case 0 dato = 63      'Dar una condición al caso "0"
	MOVF       FARG_numero_valor+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__numero4
	MOVLW      63
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero4:
;Contador2Digitos_SEMAFORO.mbas,13 :: 		case 1 dato = 6       'Dar una condición al caso "1"
	MOVF       FARG_numero_valor+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__numero7
	MOVLW      6
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero7:
;Contador2Digitos_SEMAFORO.mbas,14 :: 		case 2 dato = 91      'Dar una condición al caso "2"
	MOVF       FARG_numero_valor+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__numero10
	MOVLW      91
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero10:
;Contador2Digitos_SEMAFORO.mbas,15 :: 		case 3 dato = 79      'Dar una condición al caso "3"
	MOVF       FARG_numero_valor+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__numero13
	MOVLW      79
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero13:
;Contador2Digitos_SEMAFORO.mbas,16 :: 		case 4 dato = 102     'Dar una condición al caso "4"
	MOVF       FARG_numero_valor+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__numero16
	MOVLW      102
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero16:
;Contador2Digitos_SEMAFORO.mbas,17 :: 		case 5 dato = 109     'Dar una condición al caso "5"
	MOVF       FARG_numero_valor+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L__numero19
	MOVLW      109
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero19:
;Contador2Digitos_SEMAFORO.mbas,18 :: 		case 6 dato = 125     'Dar una condición al caso "6"
	MOVF       FARG_numero_valor+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L__numero22
	MOVLW      125
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero22:
;Contador2Digitos_SEMAFORO.mbas,19 :: 		case 7 dato = 7       'Dar una condición al caso "7"
	MOVF       FARG_numero_valor+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L__numero25
	MOVLW      7
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero25:
;Contador2Digitos_SEMAFORO.mbas,20 :: 		case 8 dato = 127     'Dar una condición al caso "8"
	MOVF       FARG_numero_valor+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__numero28
	MOVLW      127
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero28:
;Contador2Digitos_SEMAFORO.mbas,21 :: 		case 9 dato = 111     'Dar una condición al caso "9"
	MOVF       FARG_numero_valor+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L__numero31
	MOVLW      111
	MOVWF      _dato+0
	GOTO       L__numero1
L__numero31:
L__numero1:
;Contador2Digitos_SEMAFORO.mbas,23 :: 		end sub 'Fin del procedimiento con llevada "numero"
L_end_numero:
	RETURN
; end of _numero

_condicion:

;Contador2Digitos_SEMAFORO.mbas,25 :: 		sub procedure condicion        'Procedimiento "condicion"
;Contador2Digitos_SEMAFORO.mbas,26 :: 		if (contador > 5) and (repet = 0) then portd = 0XA1 end if 'Condición para el primer "if" contador tiene que ser mayor a 5, y la variable "repet" debe estar en 0 para que se cumpla la condición
	MOVF       _contador+0, 0
	SUBLW      5
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion83
	BSF        3, 0
	GOTO       L__condicion84
L__condicion83:
	BCF        3, 0
L__condicion84:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion34
	MOVLW      161
	MOVWF      PORTD+0
L__condicion34:
;Contador2Digitos_SEMAFORO.mbas,27 :: 		if (contador < 5) and (contador > 0) and (repet = 0) then  'Condición para el segundo "if" contador tiene que ser menor a 5, mayor a 0, y la variable "repet" debe estar en 0 para que se cumpla la condición
	MOVLW      5
	SUBWF      _contador+0, 0
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	MOVF       _contador+0, 0
	SUBLW      0
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ANDWF      R1+0, 1
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion85
	BSF        3, 0
	GOTO       L__condicion86
L__condicion85:
	BCF        3, 0
L__condicion86:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion37
;Contador2Digitos_SEMAFORO.mbas,28 :: 		portd = 0x91   'Sale dato "0x91" (en hexadecimal) por el puerto D
	MOVLW      145
	MOVWF      PORTD+0
;Contador2Digitos_SEMAFORO.mbas,29 :: 		delay_ms(10)   'Retraso de 10ms
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L__condicion39:
	DECFSZ     R13+0, 1
	GOTO       L__condicion39
	DECFSZ     R12+0, 1
	GOTO       L__condicion39
	NOP
;Contador2Digitos_SEMAFORO.mbas,30 :: 		portd = 0x11   'Sale dato "0x11" (en hexadecimal) por el puerto D
	MOVLW      17
	MOVWF      PORTD+0
;Contador2Digitos_SEMAFORO.mbas,31 :: 		delay_ms(10)   'Retraso de 10ms
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L__condicion40:
	DECFSZ     R13+0, 1
	GOTO       L__condicion40
	DECFSZ     R12+0, 1
	GOTO       L__condicion40
	NOP
L__condicion37:
;Contador2Digitos_SEMAFORO.mbas,33 :: 		if (contador = 0) and (repet = 0) then portd = 0x89 end if  'Condición para el tercer "if" contador tiene que ser igual a 0, y la variable "repet" debe estar en 0 para que se cumpla la condición
	MOVF       _contador+0, 0
	XORLW      0
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion87
	BSF        3, 0
	GOTO       L__condicion88
L__condicion87:
	BCF        3, 0
L__condicion88:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion42
	MOVLW      137
	MOVWF      PORTD+0
L__condicion42:
;Contador2Digitos_SEMAFORO.mbas,34 :: 		if (contador > 5) and (repet = 1) then portd = 0x4C end if  'Condición para el cuarto "if" contador tiene que ser mayor a 5, y la variable "repet" debe estar en 1 para que se cumpla la condición
	MOVF       _contador+0, 0
	SUBLW      5
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion89
	BCF        3, 0
	GOTO       L__condicion90
L__condicion89:
	BSF        3, 0
L__condicion90:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion45
	MOVLW      76
	MOVWF      PORTD+0
L__condicion45:
;Contador2Digitos_SEMAFORO.mbas,35 :: 		if (contador < 5) and (contador > 0) and (repet = 1) then portd = 0x4A end if  'Condición para el quinto "if" contador tiene que ser menor a 5, mayor a 0, y la variable "repet" debe estar en 1 para que se cumpla la condición
	MOVLW      5
	SUBWF      _contador+0, 0
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	MOVF       _contador+0, 0
	SUBLW      0
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ANDWF      R1+0, 1
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion91
	BCF        3, 0
	GOTO       L__condicion92
L__condicion91:
	BSF        3, 0
L__condicion92:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion48
	MOVLW      74
	MOVWF      PORTD+0
L__condicion48:
;Contador2Digitos_SEMAFORO.mbas,36 :: 		if (contador = 0) and (repet = 1) then portd = 0x49 end if  'Condición para el tercer "if" contador tiene que ser igual a 0, y la variable "repet" debe estar en 1 para que se cumpla la condición
	MOVF       _contador+0, 0
	XORLW      0
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	BTFSC      _repet+0, BitPos(_repet+0)
	GOTO       L__condicion93
	BCF        3, 0
	GOTO       L__condicion94
L__condicion93:
	BSF        3, 0
L__condicion94:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__condicion51
	MOVLW      73
	MOVWF      PORTD+0
L__condicion51:
;Contador2Digitos_SEMAFORO.mbas,37 :: 		if contador = 0 then  'Condición para el último "if", si el contador es igual a 0, entonces existirá una rotulación desde 0 a 255 veces para visualizar el numero 00, en los diplays por aproximadamente 1 segundo
	MOVF       _contador+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__condicion54
;Contador2Digitos_SEMAFORO.mbas,38 :: 		for veces = 0 to 255          'Bucle for desde 0 a 255 para la rotulación del display
	CLRF       _veces+0
L__condicion57:
;Contador2Digitos_SEMAFORO.mbas,39 :: 		portc = 0             'Abro transistores
	CLRF       PORTC+0
;Contador2Digitos_SEMAFORO.mbas,40 :: 		numero (unidad)       'Llamo al procedimiento
	MOVF       _unidad+0, 0
	MOVWF      FARG_numero_valor+0
	CALL       _numero+0
;Contador2Digitos_SEMAFORO.mbas,41 :: 		portb = dato          'Coloco el dato que quiero visualizar en el display
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;Contador2Digitos_SEMAFORO.mbas,42 :: 		portc = 2             'Cierro transistores
	MOVLW      2
	MOVWF      PORTC+0
;Contador2Digitos_SEMAFORO.mbas,43 :: 		delay_ms(1)           'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__condicion61:
	DECFSZ     R13+0, 1
	GOTO       L__condicion61
	DECFSZ     R12+0, 1
	GOTO       L__condicion61
;Contador2Digitos_SEMAFORO.mbas,45 :: 		portc = 0             'Abro transistores
	CLRF       PORTC+0
;Contador2Digitos_SEMAFORO.mbas,46 :: 		numero (decena)       'Llamo al procedimiento
	MOVF       _decena+0, 0
	MOVWF      FARG_numero_valor+0
	CALL       _numero+0
;Contador2Digitos_SEMAFORO.mbas,47 :: 		portb = dato          'Coloco el dato que quiero visualizar en el display
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;Contador2Digitos_SEMAFORO.mbas,48 :: 		portc = 1             'Cierro transistores
	MOVLW      1
	MOVWF      PORTC+0
;Contador2Digitos_SEMAFORO.mbas,49 :: 		delay_ms(1)           'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__condicion62:
	DECFSZ     R13+0, 1
	GOTO       L__condicion62
	DECFSZ     R12+0, 1
	GOTO       L__condicion62
;Contador2Digitos_SEMAFORO.mbas,50 :: 		next veces                'Final del bucle for para la rotulación del display
	MOVF       _veces+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__condicion60
	INCF       _veces+0, 1
	GOTO       L__condicion57
L__condicion60:
L__condicion54:
;Contador2Digitos_SEMAFORO.mbas,53 :: 		end sub 'Fin procedimiento "condición"
L_end_condicion:
	RETURN
; end of _condicion

_main:

;Contador2Digitos_SEMAFORO.mbas,55 :: 		main:
;Contador2Digitos_SEMAFORO.mbas,57 :: 		trisa = 0       'Configurar puerto A como salida
	CLRF       TRISA+0
;Contador2Digitos_SEMAFORO.mbas,58 :: 		trisb = 0       'Configurar puerto B como salida
	CLRF       TRISB+0
;Contador2Digitos_SEMAFORO.mbas,59 :: 		trisc = 0       'Configurar puerto C como salida
	CLRF       TRISC+0
;Contador2Digitos_SEMAFORO.mbas,60 :: 		trisd = 0       'Configurar puerto D como salida
	CLRF       TRISD+0
;Contador2Digitos_SEMAFORO.mbas,61 :: 		porta = 0       'Condición inicial del puerto A en 0
	CLRF       PORTA+0
;Contador2Digitos_SEMAFORO.mbas,62 :: 		portb = 0       'Condición inicial del puerto B en 0
	CLRF       PORTB+0
;Contador2Digitos_SEMAFORO.mbas,63 :: 		portc = 0       'Condición inicial del puerto C en 0
	CLRF       PORTC+0
;Contador2Digitos_SEMAFORO.mbas,64 :: 		portd = 0       'Condición inicial del puerto D en 0
	CLRF       PORTD+0
;Contador2Digitos_SEMAFORO.mbas,65 :: 		anselh = 0      'Configurar puerto B como digital
	CLRF       ANSELH+0
;Contador2Digitos_SEMAFORO.mbas,66 :: 		ansel = 0       'Configurar puerto A como digital
	CLRF       ANSEL+0
;Contador2Digitos_SEMAFORO.mbas,67 :: 		repet = 0       'Condición inicial de 0 de la variable "repet"
	BCF        _repet+0, BitPos(_repet+0)
;Contador2Digitos_SEMAFORO.mbas,69 :: 		while (1)       'Inicio bucle infinito
L__main65:
;Contador2Digitos_SEMAFORO.mbas,70 :: 		For contador = 54 to 0 step -1        'Bucle for "contador" desde 54 a 0 descendente (pasos de -1)
	MOVLW      54
	MOVWF      _contador+0
L__main70:
;Contador2Digitos_SEMAFORO.mbas,71 :: 		decena = contador / 10            'Equivalente matemático de la variable "decena"
	MOVLW      10
	MOVWF      R4+0
	MOVF       _contador+0, 0
	MOVWF      R0+0
	CALL       _Div_8x8_U+0
	MOVF       R0+0, 0
	MOVWF      _decena+0
;Contador2Digitos_SEMAFORO.mbas,72 :: 		unidad = contador - (decena * 10) 'Equivalente matemático de la variable "unidad"
	MOVLW      10
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       R0+0, 0
	SUBWF      _contador+0, 0
	MOVWF      _unidad+0
;Contador2Digitos_SEMAFORO.mbas,73 :: 		condicion                         'Llamo al procedimiento "condicion"
	CALL       _condicion+0
;Contador2Digitos_SEMAFORO.mbas,75 :: 		for veces = 0 to 255       'Bulce for "veces" de 0 a 255 para rotulación del display
	CLRF       _veces+0
L__main75:
;Contador2Digitos_SEMAFORO.mbas,76 :: 		portc = 0              'Abro transistores
	CLRF       PORTC+0
;Contador2Digitos_SEMAFORO.mbas,77 :: 		numero (unidad)        'Llamo al procedimiento
	MOVF       _unidad+0, 0
	MOVWF      FARG_numero_valor+0
	CALL       _numero+0
;Contador2Digitos_SEMAFORO.mbas,78 :: 		portb = dato           'Coloco el dato que quiero visualizar en el display
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;Contador2Digitos_SEMAFORO.mbas,79 :: 		portc = 2              'Cierro transistores
	MOVLW      2
	MOVWF      PORTC+0
;Contador2Digitos_SEMAFORO.mbas,80 :: 		delay_ms(1)            'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main79:
	DECFSZ     R13+0, 1
	GOTO       L__main79
	DECFSZ     R12+0, 1
	GOTO       L__main79
;Contador2Digitos_SEMAFORO.mbas,82 :: 		portc = 0              'Abro transistores
	CLRF       PORTC+0
;Contador2Digitos_SEMAFORO.mbas,83 :: 		numero (decena)        'Llamo al procedimiento
	MOVF       _decena+0, 0
	MOVWF      FARG_numero_valor+0
	CALL       _numero+0
;Contador2Digitos_SEMAFORO.mbas,84 :: 		portb = dato           'Coloco el dato que quiero visualizar en el display
	MOVF       _dato+0, 0
	MOVWF      PORTB+0
;Contador2Digitos_SEMAFORO.mbas,85 :: 		portc = 1              'Cierro transistores
	MOVLW      1
	MOVWF      PORTC+0
;Contador2Digitos_SEMAFORO.mbas,86 :: 		delay_ms(1)            'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main80:
	DECFSZ     R13+0, 1
	GOTO       L__main80
	DECFSZ     R12+0, 1
	GOTO       L__main80
;Contador2Digitos_SEMAFORO.mbas,87 :: 		next veces                 'Final del bucle for "veces" para la rotulación del display
	MOVF       _veces+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__main78
	INCF       _veces+0, 1
	GOTO       L__main75
L__main78:
;Contador2Digitos_SEMAFORO.mbas,88 :: 		next contador                         'Final del bucle "contador"
	MOVF       _contador+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L__main73
	MOVLW      255
	ADDWF      _contador+0, 1
	GOTO       L__main70
L__main73:
;Contador2Digitos_SEMAFORO.mbas,89 :: 		repet = not repet                   'Condición de la variable "repet" al finalizar cada bucle
	MOVLW
	XORWF      _repet+0, 1
;Contador2Digitos_SEMAFORO.mbas,90 :: 		wend            'Final bucle infinito
	GOTO       L__main65
L_end_main:
	GOTO       $+0
; end of _main
