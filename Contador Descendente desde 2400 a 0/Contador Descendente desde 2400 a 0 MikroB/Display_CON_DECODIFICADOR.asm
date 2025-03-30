
_main:

;Display_CON_DECODIFICADOR.mbas,8 :: 		main:
;Display_CON_DECODIFICADOR.mbas,10 :: 		trisb = 0       'Puerto B como salida
	CLRF       TRISB+0
;Display_CON_DECODIFICADOR.mbas,11 :: 		trisc = 0       'Puerto C como salida
	CLRF       TRISC+0
;Display_CON_DECODIFICADOR.mbas,12 :: 		trisd = 0       'Puerto D como salida
	CLRF       TRISD+0
;Display_CON_DECODIFICADOR.mbas,13 :: 		portb = 0       'Puerto B empieza en cero
	CLRF       PORTB+0
;Display_CON_DECODIFICADOR.mbas,14 :: 		portc = 0       'Puerto C empieza en cero
	CLRF       PORTC+0
;Display_CON_DECODIFICADOR.mbas,15 :: 		portd = 0       'Puerto D empieza en cero
	CLRF       PORTD+0
;Display_CON_DECODIFICADOR.mbas,16 :: 		anselh = 0      'Puerto B como digital
	CLRF       ANSELH+0
;Display_CON_DECODIFICADOR.mbas,18 :: 		while (1)       'Inicio bucle infinito
L__main2:
;Display_CON_DECODIFICADOR.mbas,19 :: 		For contador = 2400 to 0 step -6                                              'Bucle for "contador" desde 2400 a 0 descendente (pasos de -6)
	MOVLW      96
	MOVWF      _contador+0
	MOVLW      9
	MOVWF      _contador+1
L__main6:
	MOVLW      0
	SUBWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      0
	SUBWF      _contador+0, 0
L__main24:
	BTFSS      STATUS+0, 0
	GOTO       L__main10
;Display_CON_DECODIFICADOR.mbas,20 :: 		unimil = contador / 1000                                                  'Equivalente matemático de la variable "unimil"
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _contador+0, 0
	MOVWF      R0+0
	MOVF       _contador+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+5
	MOVF       R0+1, 0
	MOVWF      FLOC__main+6
	MOVF       FLOC__main+5, 0
	MOVWF      _unimil+0
;Display_CON_DECODIFICADOR.mbas,21 :: 		centena = (contador / 100) - (unimil * 10)                                'Equivalente matemático de la variable "centena"
	MOVLW      100
	MOVWF      R4+0
	CLRF       R4+1
	MOVF       _contador+0, 0
	MOVWF      R0+0
	MOVF       _contador+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+5, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       R0+0, 0
	SUBWF      FLOC__main+0, 0
	MOVWF      FLOC__main+4
	MOVF       FLOC__main+4, 0
	MOVWF      _centena+0
;Display_CON_DECODIFICADOR.mbas,22 :: 		decena = (contador / 10) - ((unimil * 100) + (centena * 10))              'Equivalente matemático de la variable "decena"
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	MOVF       _contador+0, 0
	MOVWF      R0+0
	MOVF       _contador+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+2
	MOVF       R0+1, 0
	MOVWF      FLOC__main+3
	MOVF       FLOC__main+5, 0
	MOVWF      R0+0
	MOVLW      100
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       FLOC__main+4, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       FLOC__main+0, 0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	SUBWF      FLOC__main+2, 1
	MOVF       FLOC__main+2, 0
	MOVWF      _decena+0
;Display_CON_DECODIFICADOR.mbas,23 :: 		unidad = contador - ((unimil * 1000) + (centena * 100) + (decena * 10))   'Equivalente matemático de la variable "unidad"
	MOVF       FLOC__main+5, 0
	MOVWF      R0+0
	MOVLW      232
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       FLOC__main+4, 0
	MOVWF      R0+0
	MOVLW      100
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       R0+0, 0
	ADDWF      FLOC__main+0, 1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Mul_8x8_U+0
	MOVF       FLOC__main+0, 0
	ADDWF      R0+0, 1
	MOVF       R0+0, 0
	SUBWF      _contador+0, 0
	MOVWF      _unidad+0
;Display_CON_DECODIFICADOR.mbas,24 :: 		if contador < 255 then portd = contador end if                            'Condición para mostrar contador en binario siempre y cuando contador sea menor a 255
	MOVLW      0
	SUBWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      255
	SUBWF      _contador+0, 0
L__main25:
	BTFSC      STATUS+0, 0
	GOTO       L__main12
	MOVF       _contador+0, 0
	MOVWF      PORTD+0
L__main12:
;Display_CON_DECODIFICADOR.mbas,25 :: 		for veces = 0 to 85         'Bulce for "veces" de 0 a 100 para rotulación del display
	CLRF       _veces+0
L__main15:
;Display_CON_DECODIFICADOR.mbas,26 :: 		portc = 0         'Abro transistores
	CLRF       PORTC+0
;Display_CON_DECODIFICADOR.mbas,27 :: 		portb = unimil    'Coloco el dato que quiero visualizar en el display
	MOVF       _unimil+0, 0
	MOVWF      PORTB+0
;Display_CON_DECODIFICADOR.mbas,28 :: 		portc = %0001     'Cierro transistores
	MOVLW      1
	MOVWF      PORTC+0
;Display_CON_DECODIFICADOR.mbas,29 :: 		delay_ms(1)       'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main19:
	DECFSZ     R13+0, 1
	GOTO       L__main19
	DECFSZ     R12+0, 1
	GOTO       L__main19
;Display_CON_DECODIFICADOR.mbas,31 :: 		portc = 0         'Abro transistores
	CLRF       PORTC+0
;Display_CON_DECODIFICADOR.mbas,32 :: 		portb = centena   'Coloco el dato que quiero visualizar en el display
	MOVF       _centena+0, 0
	MOVWF      PORTB+0
;Display_CON_DECODIFICADOR.mbas,33 :: 		portc = %0010     'Cierro transistores
	MOVLW      2
	MOVWF      PORTC+0
;Display_CON_DECODIFICADOR.mbas,34 :: 		delay_ms(1)       'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main20:
	DECFSZ     R13+0, 1
	GOTO       L__main20
	DECFSZ     R12+0, 1
	GOTO       L__main20
;Display_CON_DECODIFICADOR.mbas,36 :: 		portc = 0         'Abro transistores
	CLRF       PORTC+0
;Display_CON_DECODIFICADOR.mbas,37 :: 		portb = decena    'Coloco el dato que quiero visualizar en el display
	MOVF       _decena+0, 0
	MOVWF      PORTB+0
;Display_CON_DECODIFICADOR.mbas,38 :: 		portc = %0100     'Cierro transistores
	MOVLW      4
	MOVWF      PORTC+0
;Display_CON_DECODIFICADOR.mbas,39 :: 		delay_ms(1)       'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main21:
	DECFSZ     R13+0, 1
	GOTO       L__main21
	DECFSZ     R12+0, 1
	GOTO       L__main21
;Display_CON_DECODIFICADOR.mbas,41 :: 		portc = 0         'Abro transistores
	CLRF       PORTC+0
;Display_CON_DECODIFICADOR.mbas,42 :: 		portb = unidad    'Coloco el dato que quiero visualizar en el display
	MOVF       _unidad+0, 0
	MOVWF      PORTB+0
;Display_CON_DECODIFICADOR.mbas,43 :: 		portc = %1000     'Cierro transistores
	MOVLW      8
	MOVWF      PORTC+0
;Display_CON_DECODIFICADOR.mbas,44 :: 		delay_ms(1)       'retraso de 1ms
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L__main22:
	DECFSZ     R13+0, 1
	GOTO       L__main22
	DECFSZ     R12+0, 1
	GOTO       L__main22
;Display_CON_DECODIFICADOR.mbas,45 :: 		next veces                   'Final del bucle for "veces" para la rotulación del display
	MOVF       _veces+0, 0
	XORLW      85
	BTFSC      STATUS+0, 2
	GOTO       L__main18
	INCF       _veces+0, 1
	GOTO       L__main15
L__main18:
;Display_CON_DECODIFICADOR.mbas,46 :: 		next contador                    'Fin bucle for "contador"
	MOVLW      0
	XORWF      _contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      0
	XORWF      _contador+0, 0
L__main26:
	BTFSC      STATUS+0, 2
	GOTO       L__main10
	MOVLW      250
	ADDWF      _contador+0, 1
	BTFSC      STATUS+0, 0
	INCF       _contador+1, 1
	DECF       _contador+1, 1
	GOTO       L__main6
L__main10:
;Display_CON_DECODIFICADOR.mbas,47 :: 		wend            'Fin bucle infinito
	GOTO       L__main2
L_end_main:
	GOTO       $+0
; end of _main
