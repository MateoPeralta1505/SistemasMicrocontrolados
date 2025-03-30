
_borrar:

;Manejo_Teclado_LCD.mbas,33 :: 		sub procedure borrar
;Manejo_Teclado_LCD.mbas,35 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,36 :: 		lcd_out(1, 1, "Valor:")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      86
	MOVWF      ?LocalText_borrar+0
	MOVLW      97
	MOVWF      ?LocalText_borrar+1
	MOVLW      108
	MOVWF      ?LocalText_borrar+2
	MOVLW      111
	MOVWF      ?LocalText_borrar+3
	MOVLW      114
	MOVWF      ?LocalText_borrar+4
	MOVLW      58
	MOVWF      ?LocalText_borrar+5
	CLRF       ?LocalText_borrar+6
	MOVLW      ?LocalText_borrar+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,37 :: 		dato=0
	CLRF       _dato+0
	CLRF       _dato+1
	CLRF       _dato+2
	CLRF       _dato+3
;Manejo_Teclado_LCD.mbas,38 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,39 :: 		end sub
L_end_borrar:
	RETURN
; end of _borrar

_SecAscendente:

;Manejo_Teclado_LCD.mbas,42 :: 		sub procedure SecAscendente
;Manejo_Teclado_LCD.mbas,44 :: 		case 1
	MOVF       _Secuencia12+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente5
;Manejo_Teclado_LCD.mbas,46 :: 		case 1 portd = %0001
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente9
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__SecAscendente6
L__SecAscendente9:
;Manejo_Teclado_LCD.mbas,47 :: 		case 2  portd = %0010
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente12
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__SecAscendente6
L__SecAscendente12:
;Manejo_Teclado_LCD.mbas,48 :: 		case 3  portd = %0100
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente15
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__SecAscendente6
L__SecAscendente15:
;Manejo_Teclado_LCD.mbas,49 :: 		case 4  portd = %1000
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente18
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__SecAscendente6
L__SecAscendente18:
L__SecAscendente6:
;Manejo_Teclado_LCD.mbas,50 :: 		end select
	GOTO       L__SecAscendente2
L__SecAscendente5:
;Manejo_Teclado_LCD.mbas,51 :: 		case 2
	MOVF       _Secuencia12+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente21
;Manejo_Teclado_LCD.mbas,53 :: 		case 1  portd = %0011
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente25
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__SecAscendente22
L__SecAscendente25:
;Manejo_Teclado_LCD.mbas,54 :: 		case 2  portd = %0110
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente28
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__SecAscendente22
L__SecAscendente28:
;Manejo_Teclado_LCD.mbas,55 :: 		case 3  portd = %1100
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente31
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__SecAscendente22
L__SecAscendente31:
;Manejo_Teclado_LCD.mbas,56 :: 		case 4  portd = %1001
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__SecAscendente34
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__SecAscendente22
L__SecAscendente34:
L__SecAscendente22:
;Manejo_Teclado_LCD.mbas,57 :: 		end select
	GOTO       L__SecAscendente2
L__SecAscendente21:
L__SecAscendente2:
;Manejo_Teclado_LCD.mbas,59 :: 		end sub
L_end_SecAscendente:
	RETURN
; end of _SecAscendente

_contaAscendente:

;Manejo_Teclado_LCD.mbas,62 :: 		sub procedure contaAscendente
;Manejo_Teclado_LCD.mbas,63 :: 		posicion = 0  ' Inicializamos en posición 0 (antes era 1)
	CLRF       _posicion+0
;Manejo_Teclado_LCD.mbas,64 :: 		for conta = 1 to dato
	MOVLW      1
	MOVWF      _conta+0
	CLRF       _conta+1
L__contaAscendente36:
	MOVLW      0
	SUBWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente345
	MOVLW      0
	SUBWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente345
	MOVF       _conta+1, 0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente345
	MOVF       _conta+0, 0
	SUBWF      _dato+0, 0
L__contaAscendente345:
	BTFSS      STATUS+0, 0
	GOTO       L__contaAscendente40
;Manejo_Teclado_LCD.mbas,65 :: 		posicion = posicion + 1
	INCF       _posicion+0, 1
;Manejo_Teclado_LCD.mbas,66 :: 		if posicion > 4 then posicion = 1 end if  ' Reiniciamos a 1 después de 4
	MOVF       _posicion+0, 0
	SUBLW      4
	BTFSC      STATUS+0, 0
	GOTO       L__contaAscendente42
	MOVLW      1
	MOVWF      _posicion+0
L__contaAscendente42:
;Manejo_Teclado_LCD.mbas,68 :: 		WordToStr(conta, txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,69 :: 		lcd_out(2,7, txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,73 :: 		case 1  ' Secuencia 1 ascendente
	MOVF       _Secuencia12+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente47
;Manejo_Teclado_LCD.mbas,75 :: 		case 1 portd = %0001  ' LED 1
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente51
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__contaAscendente48
L__contaAscendente51:
;Manejo_Teclado_LCD.mbas,76 :: 		case 2 portd = %0010  ' LED 2
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente54
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__contaAscendente48
L__contaAscendente54:
;Manejo_Teclado_LCD.mbas,77 :: 		case 3 portd = %0100  ' LED 3
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente57
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__contaAscendente48
L__contaAscendente57:
;Manejo_Teclado_LCD.mbas,78 :: 		case 4 portd = %1000  ' LED 4
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente60
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__contaAscendente48
L__contaAscendente60:
L__contaAscendente48:
;Manejo_Teclado_LCD.mbas,79 :: 		end select
	GOTO       L__contaAscendente44
L__contaAscendente47:
;Manejo_Teclado_LCD.mbas,80 :: 		case 2  ' Secuencia 2 ascendente
	MOVF       _Secuencia12+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente63
;Manejo_Teclado_LCD.mbas,82 :: 		case 1 portd = %0011  ' LEDS 1 y 2
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente67
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__contaAscendente64
L__contaAscendente67:
;Manejo_Teclado_LCD.mbas,83 :: 		case 2 portd = %0110  ' LEDS 2 y 3
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente70
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__contaAscendente64
L__contaAscendente70:
;Manejo_Teclado_LCD.mbas,84 :: 		case 3 portd = %1100  ' LEDS 3 y 4
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente73
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__contaAscendente64
L__contaAscendente73:
;Manejo_Teclado_LCD.mbas,85 :: 		case 4 portd = %1001  ' LEDS 4 y 1
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente76
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__contaAscendente64
L__contaAscendente76:
L__contaAscendente64:
;Manejo_Teclado_LCD.mbas,86 :: 		end select
	GOTO       L__contaAscendente44
L__contaAscendente63:
L__contaAscendente44:
;Manejo_Teclado_LCD.mbas,88 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__contaAscendente77:
	DECFSZ     R13+0, 1
	GOTO       L__contaAscendente77
	DECFSZ     R12+0, 1
	GOTO       L__contaAscendente77
	DECFSZ     R11+0, 1
	GOTO       L__contaAscendente77
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,89 :: 		next conta
	MOVLW      0
	MOVWF      R0+0
	XORWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente346
	MOVF       R0+0, 0
	XORWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente346
	MOVF       _conta+1, 0
	XORWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaAscendente346
	MOVF       _dato+0, 0
	XORWF      _conta+0, 0
L__contaAscendente346:
	BTFSC      STATUS+0, 2
	GOTO       L__contaAscendente40
	INCF       _conta+0, 1
	BTFSC      STATUS+0, 2
	INCF       _conta+1, 1
	GOTO       L__contaAscendente36
L__contaAscendente40:
;Manejo_Teclado_LCD.mbas,90 :: 		borrar
	CALL       _borrar+0
;Manejo_Teclado_LCD.mbas,91 :: 		end sub
L_end_contaAscendente:
	RETURN
; end of _contaAscendente

_SecDescendente:

;Manejo_Teclado_LCD.mbas,94 :: 		sub procedure SecDescendente
;Manejo_Teclado_LCD.mbas,96 :: 		case 1
	MOVF       _Secuencia12+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente82
;Manejo_Teclado_LCD.mbas,98 :: 		case 1  portd = %0001     ' LED 1
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente86
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__SecDescendente83
L__SecDescendente86:
;Manejo_Teclado_LCD.mbas,99 :: 		case 2  portd = %0010     ' LED 2
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente89
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__SecDescendente83
L__SecDescendente89:
;Manejo_Teclado_LCD.mbas,100 :: 		case 3  portd = %0100     ' LED 3
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente92
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__SecDescendente83
L__SecDescendente92:
;Manejo_Teclado_LCD.mbas,101 :: 		case 4  portd = %1000     ' LED 4
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente95
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__SecDescendente83
L__SecDescendente95:
L__SecDescendente83:
;Manejo_Teclado_LCD.mbas,102 :: 		end select
	GOTO       L__SecDescendente79
L__SecDescendente82:
;Manejo_Teclado_LCD.mbas,103 :: 		case 2
	MOVF       _Secuencia12+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente98
;Manejo_Teclado_LCD.mbas,105 :: 		case 1  portd = %0011     'LEDS 1 y 2
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente102
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__SecDescendente99
L__SecDescendente102:
;Manejo_Teclado_LCD.mbas,106 :: 		case 2  portd = %0110     'LEDS 2 y 3
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente105
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__SecDescendente99
L__SecDescendente105:
;Manejo_Teclado_LCD.mbas,107 :: 		case 3  portd = %1100     'LEDS 3 y 4
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente108
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__SecDescendente99
L__SecDescendente108:
;Manejo_Teclado_LCD.mbas,108 :: 		case 4  portd = %1001     'LEDS 4 y 1
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__SecDescendente111
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__SecDescendente99
L__SecDescendente111:
L__SecDescendente99:
;Manejo_Teclado_LCD.mbas,109 :: 		end select
	GOTO       L__SecDescendente79
L__SecDescendente98:
L__SecDescendente79:
;Manejo_Teclado_LCD.mbas,111 :: 		end sub
L_end_SecDescendente:
	RETURN
; end of _SecDescendente

_contaDescendente:

;Manejo_Teclado_LCD.mbas,114 :: 		sub procedure contaDescendente
;Manejo_Teclado_LCD.mbas,115 :: 		posicion = 4  ' Iniciamos en la última posición
	MOVLW      4
	MOVWF      _posicion+0
;Manejo_Teclado_LCD.mbas,116 :: 		for conta = dato to 1 step -1
	MOVF       _dato+0, 0
	MOVWF      _conta+0
	MOVF       _dato+1, 0
	MOVWF      _conta+1
	MOVLW      0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente349
	MOVLW      1
	SUBWF      _dato+0, 0
L__contaDescendente349:
	BTFSS      STATUS+0, 0
	GOTO       L__contaDescendente117
L__contaDescendente114:
;Manejo_Teclado_LCD.mbas,117 :: 		WordToStr(conta, txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,118 :: 		lcd_out(2,7, txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,122 :: 		case 1  ' Secuencia 1 descendente
	MOVF       _Secuencia12+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente121
;Manejo_Teclado_LCD.mbas,124 :: 		case 1 portd = %0001
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente125
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__contaDescendente122
L__contaDescendente125:
;Manejo_Teclado_LCD.mbas,125 :: 		case 2 portd = %0010
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente128
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__contaDescendente122
L__contaDescendente128:
;Manejo_Teclado_LCD.mbas,126 :: 		case 3 portd = %0100
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente131
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__contaDescendente122
L__contaDescendente131:
;Manejo_Teclado_LCD.mbas,127 :: 		case 4 portd = %1000
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente134
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__contaDescendente122
L__contaDescendente134:
L__contaDescendente122:
;Manejo_Teclado_LCD.mbas,128 :: 		end select
	GOTO       L__contaDescendente118
L__contaDescendente121:
;Manejo_Teclado_LCD.mbas,129 :: 		case 2  ' Secuencia 2 descendente
	MOVF       _Secuencia12+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente137
;Manejo_Teclado_LCD.mbas,131 :: 		case 1 portd = %0011
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente141
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__contaDescendente138
L__contaDescendente141:
;Manejo_Teclado_LCD.mbas,132 :: 		case 2 portd = %0110
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente144
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__contaDescendente138
L__contaDescendente144:
;Manejo_Teclado_LCD.mbas,133 :: 		case 3 portd = %1100
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente147
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__contaDescendente138
L__contaDescendente147:
;Manejo_Teclado_LCD.mbas,134 :: 		case 4 portd = %1001
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente150
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__contaDescendente138
L__contaDescendente150:
L__contaDescendente138:
;Manejo_Teclado_LCD.mbas,135 :: 		end select
	GOTO       L__contaDescendente118
L__contaDescendente137:
L__contaDescendente118:
;Manejo_Teclado_LCD.mbas,138 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__contaDescendente151:
	DECFSZ     R13+0, 1
	GOTO       L__contaDescendente151
	DECFSZ     R12+0, 1
	GOTO       L__contaDescendente151
	DECFSZ     R11+0, 1
	GOTO       L__contaDescendente151
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,139 :: 		posicion = posicion - 1
	DECF       _posicion+0, 1
;Manejo_Teclado_LCD.mbas,140 :: 		if posicion < 1 then posicion = 4 end if
	MOVLW      1
	SUBWF      _posicion+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L__contaDescendente153
	MOVLW      4
	MOVWF      _posicion+0
L__contaDescendente153:
;Manejo_Teclado_LCD.mbas,141 :: 		next conta
	MOVLW      0
	XORWF      _conta+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__contaDescendente350
	MOVLW      1
	XORWF      _conta+0, 0
L__contaDescendente350:
	BTFSC      STATUS+0, 2
	GOTO       L__contaDescendente117
	MOVLW      255
	ADDWF      _conta+0, 1
	BTFSC      STATUS+0, 0
	INCF       _conta+1, 1
	DECF       _conta+1, 1
	GOTO       L__contaDescendente114
L__contaDescendente117:
;Manejo_Teclado_LCD.mbas,142 :: 		borrar
	CALL       _borrar+0
;Manejo_Teclado_LCD.mbas,143 :: 		end sub
L_end_contaDescendente:
	RETURN
; end of _contaDescendente

_secuencia3As:

;Manejo_Teclado_LCD.mbas,145 :: 		Sub procedure secuencia3As
;Manejo_Teclado_LCD.mbas,146 :: 		posicion = 0  ' Inicializamos en posición 0 (antes era 1)
	CLRF       _posicion+0
;Manejo_Teclado_LCD.mbas,147 :: 		for conta = 1 to dato
	MOVLW      1
	MOVWF      _conta+0
	CLRF       _conta+1
L__secuencia3As156:
	MOVLW      0
	SUBWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As352
	MOVLW      0
	SUBWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As352
	MOVF       _conta+1, 0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As352
	MOVF       _conta+0, 0
	SUBWF      _dato+0, 0
L__secuencia3As352:
	BTFSS      STATUS+0, 0
	GOTO       L__secuencia3As160
;Manejo_Teclado_LCD.mbas,148 :: 		posicion = posicion + 1
	INCF       _posicion+0, 1
;Manejo_Teclado_LCD.mbas,149 :: 		if posicion > 8 then posicion = 1 end if  ' Reiniciamos a 1 después de 8
	MOVF       _posicion+0, 0
	SUBLW      8
	BTFSC      STATUS+0, 0
	GOTO       L__secuencia3As162
	MOVLW      1
	MOVWF      _posicion+0
L__secuencia3As162:
;Manejo_Teclado_LCD.mbas,151 :: 		WordToStr(conta, txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,152 :: 		lcd_out(2,7, txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,156 :: 		case 1  portd = %0001     ' LED 1
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As167
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As167:
;Manejo_Teclado_LCD.mbas,157 :: 		case 2  portd = %0011     ' LED 1 y 2
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As170
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As170:
;Manejo_Teclado_LCD.mbas,158 :: 		case 3  portd = %0010     ' LED 2
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As173
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As173:
;Manejo_Teclado_LCD.mbas,159 :: 		case 4  portd = %0110     ' LED 2 y 3
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As176
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As176:
;Manejo_Teclado_LCD.mbas,160 :: 		case 5  portd = %0100     ' LED 3
	MOVF       _posicion+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As179
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As179:
;Manejo_Teclado_LCD.mbas,161 :: 		case 6  portd = %1100     ' LED 3 y 4
	MOVF       _posicion+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As182
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As182:
;Manejo_Teclado_LCD.mbas,162 :: 		case 7  portd = %1000     ' LED 4
	MOVF       _posicion+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As185
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As185:
;Manejo_Teclado_LCD.mbas,163 :: 		case 8  portd = %1001     ' LED 4 y 1
	MOVF       _posicion+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As188
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__secuencia3As164
L__secuencia3As188:
L__secuencia3As164:
;Manejo_Teclado_LCD.mbas,165 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__secuencia3As189:
	DECFSZ     R13+0, 1
	GOTO       L__secuencia3As189
	DECFSZ     R12+0, 1
	GOTO       L__secuencia3As189
	DECFSZ     R11+0, 1
	GOTO       L__secuencia3As189
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,166 :: 		next conta
	MOVLW      0
	MOVWF      R0+0
	XORWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As353
	MOVF       R0+0, 0
	XORWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As353
	MOVF       _conta+1, 0
	XORWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3As353
	MOVF       _dato+0, 0
	XORWF      _conta+0, 0
L__secuencia3As353:
	BTFSC      STATUS+0, 2
	GOTO       L__secuencia3As160
	INCF       _conta+0, 1
	BTFSC      STATUS+0, 2
	INCF       _conta+1, 1
	GOTO       L__secuencia3As156
L__secuencia3As160:
;Manejo_Teclado_LCD.mbas,167 :: 		borrar
	CALL       _borrar+0
;Manejo_Teclado_LCD.mbas,168 :: 		end sub
L_end_secuencia3As:
	RETURN
; end of _secuencia3As

_secuencia3Des:

;Manejo_Teclado_LCD.mbas,171 :: 		sub procedure secuencia3Des
;Manejo_Teclado_LCD.mbas,172 :: 		posicion = 8  ' Iniciamos en la última posición
	MOVLW      8
	MOVWF      _posicion+0
;Manejo_Teclado_LCD.mbas,173 :: 		for conta = dato to 1 step -1
	MOVF       _dato+0, 0
	MOVWF      _conta+0
	MOVF       _dato+1, 0
	MOVWF      _conta+1
	MOVLW      0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des355
	MOVLW      1
	SUBWF      _dato+0, 0
L__secuencia3Des355:
	BTFSS      STATUS+0, 0
	GOTO       L__secuencia3Des195
L__secuencia3Des192:
;Manejo_Teclado_LCD.mbas,174 :: 		WordToStr(conta, txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,175 :: 		lcd_out(2,7, txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,179 :: 		case 1  portd = %0001     ' LED 1
	MOVF       _posicion+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des199
	MOVLW      1
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des199:
;Manejo_Teclado_LCD.mbas,180 :: 		case 2  portd = %0011     ' LED 1 y 2
	MOVF       _posicion+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des202
	MOVLW      3
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des202:
;Manejo_Teclado_LCD.mbas,181 :: 		case 3  portd = %0010     ' LED 2
	MOVF       _posicion+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des205
	MOVLW      2
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des205:
;Manejo_Teclado_LCD.mbas,182 :: 		case 4  portd = %0110     ' LED 2 y 3
	MOVF       _posicion+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des208
	MOVLW      6
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des208:
;Manejo_Teclado_LCD.mbas,183 :: 		case 5  portd = %0100     ' LED 3
	MOVF       _posicion+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des211
	MOVLW      4
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des211:
;Manejo_Teclado_LCD.mbas,184 :: 		case 6  portd = %1100     ' LED 3 y 4
	MOVF       _posicion+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des214
	MOVLW      12
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des214:
;Manejo_Teclado_LCD.mbas,185 :: 		case 7  portd = %1000     ' LED 4
	MOVF       _posicion+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des217
	MOVLW      8
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des217:
;Manejo_Teclado_LCD.mbas,186 :: 		case 8  portd = %1001     ' LED 4 y 1
	MOVF       _posicion+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des220
	MOVLW      9
	MOVWF      PORTD+0
	GOTO       L__secuencia3Des196
L__secuencia3Des220:
L__secuencia3Des196:
;Manejo_Teclado_LCD.mbas,188 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__secuencia3Des221:
	DECFSZ     R13+0, 1
	GOTO       L__secuencia3Des221
	DECFSZ     R12+0, 1
	GOTO       L__secuencia3Des221
	DECFSZ     R11+0, 1
	GOTO       L__secuencia3Des221
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,189 :: 		posicion = posicion - 1
	DECF       _posicion+0, 1
;Manejo_Teclado_LCD.mbas,190 :: 		if posicion < 1 then posicion = 8 end if
	MOVLW      1
	SUBWF      _posicion+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L__secuencia3Des223
	MOVLW      8
	MOVWF      _posicion+0
L__secuencia3Des223:
;Manejo_Teclado_LCD.mbas,191 :: 		next conta
	MOVLW      0
	XORWF      _conta+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__secuencia3Des356
	MOVLW      1
	XORWF      _conta+0, 0
L__secuencia3Des356:
	BTFSC      STATUS+0, 2
	GOTO       L__secuencia3Des195
	MOVLW      255
	ADDWF      _conta+0, 1
	BTFSC      STATUS+0, 0
	INCF       _conta+1, 1
	DECF       _conta+1, 1
	GOTO       L__secuencia3Des192
L__secuencia3Des195:
;Manejo_Teclado_LCD.mbas,192 :: 		borrar
	CALL       _borrar+0
;Manejo_Teclado_LCD.mbas,193 :: 		end sub
L_end_secuencia3Des:
	RETURN
; end of _secuencia3Des

_teclado:

;Manejo_Teclado_LCD.mbas,197 :: 		sub procedure teclado
;Manejo_Teclado_LCD.mbas,198 :: 		tec = 0
	CLRF       _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,199 :: 		while(tec = 0)
L__teclado227:
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado358
	MOVLW      0
	XORWF      _tec+0, 0
L__teclado358:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado228
;Manejo_Teclado_LCD.mbas,200 :: 		tec = keypad_key_click()
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,201 :: 		wend
	GOTO       L__teclado227
L__teclado228:
;Manejo_Teclado_LCD.mbas,204 :: 		case 1 valor = 1
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado359
	MOVLW      1
	XORWF      _tec+0, 0
L__teclado359:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado234
	MOVLW      1
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado234:
;Manejo_Teclado_LCD.mbas,205 :: 		case 2 valor = 2
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado360
	MOVLW      2
	XORWF      _tec+0, 0
L__teclado360:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado237
	MOVLW      2
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado237:
;Manejo_Teclado_LCD.mbas,206 :: 		case 3 valor = 3
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado361
	MOVLW      3
	XORWF      _tec+0, 0
L__teclado361:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado240
	MOVLW      3
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado240:
;Manejo_Teclado_LCD.mbas,207 :: 		case 4 valor = 65
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado362
	MOVLW      4
	XORWF      _tec+0, 0
L__teclado362:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado243
	MOVLW      65
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado243:
;Manejo_Teclado_LCD.mbas,208 :: 		case 5 valor = 4
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado363
	MOVLW      5
	XORWF      _tec+0, 0
L__teclado363:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado246
	MOVLW      4
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado246:
;Manejo_Teclado_LCD.mbas,209 :: 		case 6 valor = 5
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado364
	MOVLW      6
	XORWF      _tec+0, 0
L__teclado364:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado249
	MOVLW      5
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado249:
;Manejo_Teclado_LCD.mbas,210 :: 		case 7 valor = 6
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado365
	MOVLW      7
	XORWF      _tec+0, 0
L__teclado365:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado252
	MOVLW      6
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado252:
;Manejo_Teclado_LCD.mbas,211 :: 		case 8 valor = 66
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado366
	MOVLW      8
	XORWF      _tec+0, 0
L__teclado366:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado255
	MOVLW      66
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado255:
;Manejo_Teclado_LCD.mbas,212 :: 		case 9 valor = 7
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado367
	MOVLW      9
	XORWF      _tec+0, 0
L__teclado367:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado258
	MOVLW      7
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado258:
;Manejo_Teclado_LCD.mbas,213 :: 		case 10 valor = 8
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado368
	MOVLW      10
	XORWF      _tec+0, 0
L__teclado368:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado261
	MOVLW      8
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado261:
;Manejo_Teclado_LCD.mbas,214 :: 		case 11 valor = 9
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado369
	MOVLW      11
	XORWF      _tec+0, 0
L__teclado369:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado264
	MOVLW      9
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado264:
;Manejo_Teclado_LCD.mbas,215 :: 		case 12 valor = 67
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado370
	MOVLW      12
	XORWF      _tec+0, 0
L__teclado370:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado267
	MOVLW      67
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado267:
;Manejo_Teclado_LCD.mbas,216 :: 		case 13 valor = 42
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado371
	MOVLW      13
	XORWF      _tec+0, 0
L__teclado371:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado270
	MOVLW      42
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado270:
;Manejo_Teclado_LCD.mbas,217 :: 		case 14 valor = 0
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado372
	MOVLW      14
	XORWF      _tec+0, 0
L__teclado372:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado273
	CLRF       _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado273:
;Manejo_Teclado_LCD.mbas,218 :: 		case 15 valor = 35
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado373
	MOVLW      15
	XORWF      _tec+0, 0
L__teclado373:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado276
	MOVLW      35
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado276:
;Manejo_Teclado_LCD.mbas,219 :: 		case 16 valor = 68
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado374
	MOVLW      16
	XORWF      _tec+0, 0
L__teclado374:
	BTFSS      STATUS+0, 2
	GOTO       L__teclado279
	MOVLW      68
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__teclado231
L__teclado279:
L__teclado231:
;Manejo_Teclado_LCD.mbas,222 :: 		if (valor < 10) and (bloqueo = 1) and (bloqueo_num = 0) then lcd_chr_cp (48+valor) dato = dato * 10 + valor end if
	MOVLW      0
	SUBWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclado375
	MOVLW      10
	SUBWF      _valor+0, 0
L__teclado375:
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1+0
	BTFSC      _bloqueo+0, BitPos(_bloqueo+0)
	GOTO       L__teclado376
	BCF        3, 0
	GOTO       L__teclado377
L__teclado376:
	BSF        3, 0
L__teclado377:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      R1+0, 1
	BTFSC      _bloqueo_num+0, BitPos(_bloqueo_num+0)
	GOTO       L__teclado378
	BSF        3, 0
	GOTO       L__teclado379
L__teclado378:
	BCF        3, 0
L__teclado379:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__teclado281
	MOVF       _valor+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_CP_Out_Char+0
	CALL       _Lcd_Chr_CP+0
	MOVF       _dato+0, 0
	MOVWF      R0+0
	MOVF       _dato+1, 0
	MOVWF      R0+1
	MOVF       _dato+2, 0
	MOVWF      R0+2
	MOVF       _dato+3, 0
	MOVWF      R0+3
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Mul_32x32_U+0
	MOVF       _valor+0, 0
	MOVWF      _dato+0
	MOVF       _valor+1, 0
	MOVWF      _dato+1
	CLRF       _dato+2
	CLRF       _dato+3
	MOVF       R0+0, 0
	ADDWF      _dato+0, 1
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	INCFSZ     R0+1, 0
	ADDWF      _dato+1, 1
	MOVF       R0+2, 0
	BTFSC      STATUS+0, 0
	INCFSZ     R0+2, 0
	ADDWF      _dato+2, 1
	MOVF       R0+3, 0
	BTFSC      STATUS+0, 0
	INCFSZ     R0+3, 0
	ADDWF      _dato+3, 1
L__teclado281:
;Manejo_Teclado_LCD.mbas,223 :: 		end sub
L_end_teclado:
	RETURN
; end of _teclado

_menu:

;Manejo_Teclado_LCD.mbas,225 :: 		sub procedure menu
;Manejo_Teclado_LCD.mbas,226 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,227 :: 		end sub
L_end_menu:
	RETURN
; end of _menu

_main:

;Manejo_Teclado_LCD.mbas,229 :: 		main:
;Manejo_Teclado_LCD.mbas,230 :: 		anselh = 0
	CLRF       ANSELH+0
;Manejo_Teclado_LCD.mbas,231 :: 		ansel = 0
	CLRF       ANSEL+0
;Manejo_Teclado_LCD.mbas,232 :: 		trisc = 0
	CLRF       TRISC+0
;Manejo_Teclado_LCD.mbas,233 :: 		trisd = 0
	CLRF       TRISD+0
;Manejo_Teclado_LCD.mbas,234 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,235 :: 		Lcd_Init()
	CALL       _Lcd_Init+0
;Manejo_Teclado_LCD.mbas,236 :: 		keypad_init()
	CALL       _Keypad_Init+0
;Manejo_Teclado_LCD.mbas,239 :: 		dato = 0
	CLRF       _dato+0
	CLRF       _dato+1
	CLRF       _dato+2
	CLRF       _dato+3
;Manejo_Teclado_LCD.mbas,240 :: 		bloqueo = 0
	BCF        _bloqueo+0, BitPos(_bloqueo+0)
;Manejo_Teclado_LCD.mbas,241 :: 		bloqueo_num = 0
	BCF        _bloqueo_num+0, BitPos(_bloqueo_num+0)
;Manejo_Teclado_LCD.mbas,242 :: 		lcd_out(1, 1, "A. Ascendente")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      65
	MOVWF      ?LocalText_main+0
	MOVLW      46
	MOVWF      ?LocalText_main+1
	MOVLW      32
	MOVWF      ?LocalText_main+2
	MOVLW      65
	MOVWF      ?LocalText_main+3
	MOVLW      115
	MOVWF      ?LocalText_main+4
	MOVLW      99
	MOVWF      ?LocalText_main+5
	MOVLW      101
	MOVWF      ?LocalText_main+6
	MOVLW      110
	MOVWF      ?LocalText_main+7
	MOVLW      100
	MOVWF      ?LocalText_main+8
	MOVLW      101
	MOVWF      ?LocalText_main+9
	MOVLW      110
	MOVWF      ?LocalText_main+10
	MOVLW      116
	MOVWF      ?LocalText_main+11
	MOVLW      101
	MOVWF      ?LocalText_main+12
	CLRF       ?LocalText_main+13
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,243 :: 		lcd_out(2, 1, "B. Descendente")
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      66
	MOVWF      ?LocalText_main+0
	MOVLW      46
	MOVWF      ?LocalText_main+1
	MOVLW      32
	MOVWF      ?LocalText_main+2
	MOVLW      68
	MOVWF      ?LocalText_main+3
	MOVLW      101
	MOVWF      ?LocalText_main+4
	MOVLW      115
	MOVWF      ?LocalText_main+5
	MOVLW      99
	MOVWF      ?LocalText_main+6
	MOVLW      101
	MOVWF      ?LocalText_main+7
	MOVLW      110
	MOVWF      ?LocalText_main+8
	MOVLW      100
	MOVWF      ?LocalText_main+9
	MOVLW      101
	MOVWF      ?LocalText_main+10
	MOVLW      110
	MOVWF      ?LocalText_main+11
	MOVLW      116
	MOVWF      ?LocalText_main+12
	MOVLW      101
	MOVWF      ?LocalText_main+13
	CLRF       ?LocalText_main+14
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,245 :: 		while (1)
L__main291:
;Manejo_Teclado_LCD.mbas,246 :: 		teclado
	CALL       _teclado+0
;Manejo_Teclado_LCD.mbas,247 :: 		if valor = 65 then opcion = 0 bloqueo = 1 break end if
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main382
	MOVLW      65
	XORWF      _valor+0, 0
L__main382:
	BTFSS      STATUS+0, 2
	GOTO       L__main296
	BCF        _opcion+0, BitPos(_opcion+0)
	BSF        _bloqueo+0, BitPos(_bloqueo+0)
	GOTO       L__main292
L__main296:
;Manejo_Teclado_LCD.mbas,248 :: 		if valor = 66 then opcion = 1 bloqueo = 1 break end if
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main383
	MOVLW      66
	XORWF      _valor+0, 0
L__main383:
	BTFSS      STATUS+0, 2
	GOTO       L__main299
	BSF        _opcion+0, BitPos(_opcion+0)
	BSF        _bloqueo+0, BitPos(_bloqueo+0)
	GOTO       L__main292
L__main299:
;Manejo_Teclado_LCD.mbas,249 :: 		wend
	GOTO       L__main291
L__main292:
;Manejo_Teclado_LCD.mbas,251 :: 		valores:
L__main_valores:
;Manejo_Teclado_LCD.mbas,252 :: 		borrar
	CALL       _borrar+0
;Manejo_Teclado_LCD.mbas,253 :: 		lcd_out(1,1,"Valor:")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      86
	MOVWF      ?LocalText_main+0
	MOVLW      97
	MOVWF      ?LocalText_main+1
	MOVLW      108
	MOVWF      ?LocalText_main+2
	MOVLW      111
	MOVWF      ?LocalText_main+3
	MOVLW      114
	MOVWF      ?LocalText_main+4
	MOVLW      58
	MOVWF      ?LocalText_main+5
	CLRF       ?LocalText_main+6
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,255 :: 		while (1)
L__main303:
;Manejo_Teclado_LCD.mbas,256 :: 		teclado
	CALL       _teclado+0
;Manejo_Teclado_LCD.mbas,257 :: 		if (valor = 68) and (dato < 65536) and (dato > 0) then goto secuencias end if
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main384
	MOVLW      68
	XORWF      _valor+0, 0
L__main384:
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	MOVLW      0
	SUBWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main385
	MOVLW      1
	SUBWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main385
	MOVLW      0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main385
	MOVLW      0
	SUBWF      _dato+0, 0
L__main385:
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	ANDWF      R1+0, 1
	MOVF       _dato+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main386
	MOVF       _dato+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main386
	MOVF       _dato+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main386
	MOVF       _dato+0, 0
	SUBLW      0
L__main386:
	MOVLW      255
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main308
	GOTO       L__main_secuencias
L__main308:
;Manejo_Teclado_LCD.mbas,258 :: 		if (valor = 68) and (dato = 0) then borrar lcd_out(1,1, "Ingrese valor") delay_ms(1000) goto valores end if
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main387
	MOVLW      68
	XORWF      _valor+0, 0
L__main387:
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R0+0
	XORWF      _dato+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main388
	MOVF       R0+0, 0
	XORWF      _dato+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main388
	MOVF       R0+0, 0
	XORWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main388
	MOVF       _dato+0, 0
	XORLW      0
L__main388:
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main312
	CALL       _borrar+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      73
	MOVWF      ?LocalText_main+0
	MOVLW      110
	MOVWF      ?LocalText_main+1
	MOVLW      103
	MOVWF      ?LocalText_main+2
	MOVLW      114
	MOVWF      ?LocalText_main+3
	MOVLW      101
	MOVWF      ?LocalText_main+4
	MOVLW      115
	MOVWF      ?LocalText_main+5
	MOVLW      101
	MOVWF      ?LocalText_main+6
	MOVLW      32
	MOVWF      ?LocalText_main+7
	MOVLW      118
	MOVWF      ?LocalText_main+8
	MOVLW      97
	MOVWF      ?LocalText_main+9
	MOVLW      108
	MOVWF      ?LocalText_main+10
	MOVLW      111
	MOVWF      ?LocalText_main+11
	MOVLW      114
	MOVWF      ?LocalText_main+12
	CLRF       ?LocalText_main+13
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main314:
	DECFSZ     R13+0, 1
	GOTO       L__main314
	DECFSZ     R12+0, 1
	GOTO       L__main314
	DECFSZ     R11+0, 1
	GOTO       L__main314
	NOP
	GOTO       L__main_valores
L__main312:
;Manejo_Teclado_LCD.mbas,259 :: 		if (dato > 65535) then borrar lcd_out(1,1, "ERROR RANGO") delay_ms(1000) goto valores end if
	MOVF       _dato+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main389
	MOVF       _dato+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main389
	MOVF       _dato+1, 0
	SUBLW      255
	BTFSS      STATUS+0, 2
	GOTO       L__main389
	MOVF       _dato+0, 0
	SUBLW      255
L__main389:
	BTFSC      STATUS+0, 0
	GOTO       L__main316
	CALL       _borrar+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      69
	MOVWF      ?LocalText_main+0
	MOVLW      82
	MOVWF      ?LocalText_main+1
	MOVLW      82
	MOVWF      ?LocalText_main+2
	MOVLW      79
	MOVWF      ?LocalText_main+3
	MOVLW      82
	MOVWF      ?LocalText_main+4
	MOVLW      32
	MOVWF      ?LocalText_main+5
	MOVLW      82
	MOVWF      ?LocalText_main+6
	MOVLW      65
	MOVWF      ?LocalText_main+7
	MOVLW      78
	MOVWF      ?LocalText_main+8
	MOVLW      71
	MOVWF      ?LocalText_main+9
	MOVLW      79
	MOVWF      ?LocalText_main+10
	CLRF       ?LocalText_main+11
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main318:
	DECFSZ     R13+0, 1
	GOTO       L__main318
	DECFSZ     R12+0, 1
	GOTO       L__main318
	DECFSZ     R11+0, 1
	GOTO       L__main318
	NOP
	GOTO       L__main_valores
L__main316:
;Manejo_Teclado_LCD.mbas,260 :: 		wend
	GOTO       L__main303
;Manejo_Teclado_LCD.mbas,262 :: 		secuencias:
L__main_secuencias:
;Manejo_Teclado_LCD.mbas,263 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,264 :: 		lcd_out(1, 1, "A. S1")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      65
	MOVWF      ?LocalText_main+0
	MOVLW      46
	MOVWF      ?LocalText_main+1
	MOVLW      32
	MOVWF      ?LocalText_main+2
	MOVLW      83
	MOVWF      ?LocalText_main+3
	MOVLW      49
	MOVWF      ?LocalText_main+4
	CLRF       ?LocalText_main+5
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,265 :: 		lcd_out(1,10, "B. S2")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      66
	MOVWF      ?LocalText_main+0
	MOVLW      46
	MOVWF      ?LocalText_main+1
	MOVLW      32
	MOVWF      ?LocalText_main+2
	MOVLW      83
	MOVWF      ?LocalText_main+3
	MOVLW      50
	MOVWF      ?LocalText_main+4
	CLRF       ?LocalText_main+5
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,266 :: 		lcd_out(2, 1, "C. S3")
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      67
	MOVWF      ?LocalText_main+0
	MOVLW      46
	MOVWF      ?LocalText_main+1
	MOVLW      32
	MOVWF      ?LocalText_main+2
	MOVLW      83
	MOVWF      ?LocalText_main+3
	MOVLW      51
	MOVWF      ?LocalText_main+4
	CLRF       ?LocalText_main+5
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,267 :: 		bloqueo_num = 1
	BSF        _bloqueo_num+0, BitPos(_bloqueo_num+0)
;Manejo_Teclado_LCD.mbas,270 :: 		while (1)
L__main320:
;Manejo_Teclado_LCD.mbas,271 :: 		teclado
	CALL       _teclado+0
;Manejo_Teclado_LCD.mbas,272 :: 		if valor = 65 then  'Secuencia 1
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main390
	MOVLW      65
	XORWF      _valor+0, 0
L__main390:
	BTFSS      STATUS+0, 2
	GOTO       L__main325
;Manejo_Teclado_LCD.mbas,273 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,274 :: 		secuencia12 = 1
	MOVLW      1
	MOVWF      _Secuencia12+0
;Manejo_Teclado_LCD.mbas,275 :: 		if opcion = 0 then
	BTFSC      _opcion+0, BitPos(_opcion+0)
	GOTO       L__main328
;Manejo_Teclado_LCD.mbas,276 :: 		contaAscendente
	CALL       _contaAscendente+0
	GOTO       L__main329
;Manejo_Teclado_LCD.mbas,277 :: 		else
L__main328:
;Manejo_Teclado_LCD.mbas,278 :: 		contaDescendente
	CALL       _contaDescendente+0
;Manejo_Teclado_LCD.mbas,279 :: 		end if
L__main329:
;Manejo_Teclado_LCD.mbas,280 :: 		menu
	CALL       _menu+0
;Manejo_Teclado_LCD.mbas,281 :: 		goto main
	GOTO       _main+0
L__main325:
;Manejo_Teclado_LCD.mbas,283 :: 		if valor = 66 then  'Secuencia 2
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main391
	MOVLW      66
	XORWF      _valor+0, 0
L__main391:
	BTFSS      STATUS+0, 2
	GOTO       L__main331
;Manejo_Teclado_LCD.mbas,284 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,285 :: 		secuencia12 = 2
	MOVLW      2
	MOVWF      _Secuencia12+0
;Manejo_Teclado_LCD.mbas,286 :: 		if opcion = 0 then
	BTFSC      _opcion+0, BitPos(_opcion+0)
	GOTO       L__main334
;Manejo_Teclado_LCD.mbas,287 :: 		contaAscendente
	CALL       _contaAscendente+0
	GOTO       L__main335
;Manejo_Teclado_LCD.mbas,288 :: 		else
L__main334:
;Manejo_Teclado_LCD.mbas,289 :: 		contaDescendente
	CALL       _contaDescendente+0
;Manejo_Teclado_LCD.mbas,290 :: 		end if
L__main335:
;Manejo_Teclado_LCD.mbas,291 :: 		menu
	CALL       _menu+0
;Manejo_Teclado_LCD.mbas,292 :: 		goto main
	GOTO       _main+0
L__main331:
;Manejo_Teclado_LCD.mbas,294 :: 		if valor = 67 then  'Secuencia 3  '''NUEVA NUEVA NUEVA
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main392
	MOVLW      67
	XORWF      _valor+0, 0
L__main392:
	BTFSS      STATUS+0, 2
	GOTO       L__main337
;Manejo_Teclado_LCD.mbas,295 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,296 :: 		Secuencia12 = 3
	MOVLW      3
	MOVWF      _Secuencia12+0
;Manejo_Teclado_LCD.mbas,297 :: 		if opcion = 0 then
	BTFSC      _opcion+0, BitPos(_opcion+0)
	GOTO       L__main340
;Manejo_Teclado_LCD.mbas,298 :: 		secuencia3As
	CALL       _secuencia3As+0
	GOTO       L__main341
;Manejo_Teclado_LCD.mbas,299 :: 		else
L__main340:
;Manejo_Teclado_LCD.mbas,300 :: 		secuencia3Des
	CALL       _secuencia3Des+0
;Manejo_Teclado_LCD.mbas,301 :: 		end if
L__main341:
;Manejo_Teclado_LCD.mbas,302 :: 		menu
	CALL       _menu+0
;Manejo_Teclado_LCD.mbas,303 :: 		goto main
	GOTO       _main+0
L__main337:
;Manejo_Teclado_LCD.mbas,305 :: 		wend
	GOTO       L__main320
;Manejo_Teclado_LCD.mbas,306 :: 		wend
L_end_main:
	GOTO       $+0
; end of _main
