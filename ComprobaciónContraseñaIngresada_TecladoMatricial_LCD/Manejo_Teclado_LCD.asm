
_inicio:

;Manejo_Teclado_LCD.mbas,34 :: 		sub procedure inicio
;Manejo_Teclado_LCD.mbas,35 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,36 :: 		lcd_out(1,1,"SUMATIVA II")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      83
	MOVWF      ?LocalText_inicio+0
	MOVLW      85
	MOVWF      ?LocalText_inicio+1
	MOVLW      77
	MOVWF      ?LocalText_inicio+2
	MOVLW      65
	MOVWF      ?LocalText_inicio+3
	MOVLW      84
	MOVWF      ?LocalText_inicio+4
	MOVLW      73
	MOVWF      ?LocalText_inicio+5
	MOVLW      86
	MOVWF      ?LocalText_inicio+6
	MOVLW      65
	MOVWF      ?LocalText_inicio+7
	MOVLW      32
	MOVWF      ?LocalText_inicio+8
	MOVLW      73
	MOVWF      ?LocalText_inicio+9
	MOVLW      73
	MOVWF      ?LocalText_inicio+10
	CLRF       ?LocalText_inicio+11
	MOVLW      ?LocalText_inicio+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,37 :: 		delay_ms(1000)
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__inicio1:
	DECFSZ     R13+0, 1
	GOTO       L__inicio1
	DECFSZ     R12+0, 1
	GOTO       L__inicio1
	DECFSZ     R11+0, 1
	GOTO       L__inicio1
	NOP
;Manejo_Teclado_LCD.mbas,38 :: 		end sub
L_end_inicio:
	RETURN
; end of _inicio

_ingresoClave:

;Manejo_Teclado_LCD.mbas,40 :: 		sub procedure ingresoClave
;Manejo_Teclado_LCD.mbas,41 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,42 :: 		lcd_out(1,1,"CLAVE=")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      67
	MOVWF      ?LocalText_ingresoClave+0
	MOVLW      76
	MOVWF      ?LocalText_ingresoClave+1
	MOVLW      65
	MOVWF      ?LocalText_ingresoClave+2
	MOVLW      86
	MOVWF      ?LocalText_ingresoClave+3
	MOVLW      69
	MOVWF      ?LocalText_ingresoClave+4
	MOVLW      61
	MOVWF      ?LocalText_ingresoClave+5
	CLRF       ?LocalText_ingresoClave+6
	MOVLW      ?LocalText_ingresoClave+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,43 :: 		end sub
L_end_ingresoClave:
	RETURN
; end of _ingresoClave

_menu:

;Manejo_Teclado_LCD.mbas,45 :: 		sub procedure menu
;Manejo_Teclado_LCD.mbas,46 :: 		clave_ingresada = 0
	CLRF       _clave_ingresada+0
	CLRF       _clave_ingresada+1
;Manejo_Teclado_LCD.mbas,47 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,48 :: 		lcd_out(1,1,"A. L1     B. L2")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      65
	MOVWF      ?LocalText_menu+0
	MOVLW      46
	MOVWF      ?LocalText_menu+1
	MOVLW      32
	MOVWF      ?LocalText_menu+2
	MOVLW      76
	MOVWF      ?LocalText_menu+3
	MOVLW      49
	MOVWF      ?LocalText_menu+4
	MOVLW      32
	MOVWF      ?LocalText_menu+5
	MOVLW      32
	MOVWF      ?LocalText_menu+6
	MOVLW      32
	MOVWF      ?LocalText_menu+7
	MOVLW      32
	MOVWF      ?LocalText_menu+8
	MOVLW      32
	MOVWF      ?LocalText_menu+9
	MOVLW      66
	MOVWF      ?LocalText_menu+10
	MOVLW      46
	MOVWF      ?LocalText_menu+11
	MOVLW      32
	MOVWF      ?LocalText_menu+12
	MOVLW      76
	MOVWF      ?LocalText_menu+13
	MOVLW      50
	MOVWF      ?LocalText_menu+14
	CLRF       ?LocalText_menu+15
	MOVLW      ?LocalText_menu+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,49 :: 		led1 = 0
	BCF        _led1+0, BitPos(_led1+0)
;Manejo_Teclado_LCD.mbas,50 :: 		led2 = 0
	BCF        _led2+0, BitPos(_led2+0)
;Manejo_Teclado_LCD.mbas,51 :: 		end sub
L_end_menu:
	RETURN
; end of _menu

_teclaA:

;Manejo_Teclado_LCD.mbas,53 :: 		sub procedure teclaA
;Manejo_Teclado_LCD.mbas,54 :: 		if tec = 4 then
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclaA123
	MOVLW      4
	XORWF      _tec+0, 0
L__teclaA123:
	BTFSS      STATUS+0, 2
	GOTO       L__teclaA6
;Manejo_Teclado_LCD.mbas,55 :: 		led1 = not led1
	MOVLW
	XORWF      _led1+0, 1
;Manejo_Teclado_LCD.mbas,56 :: 		if led1 = 1 then
	BTFSS      _led1+0, BitPos(_led1+0)
	GOTO       L__teclaA9
;Manejo_Teclado_LCD.mbas,57 :: 		portd.0 = 1
	BSF        PORTD+0, 0
	GOTO       L__teclaA10
;Manejo_Teclado_LCD.mbas,58 :: 		else
L__teclaA9:
;Manejo_Teclado_LCD.mbas,59 :: 		portd.0 = 0
	BCF        PORTD+0, 0
;Manejo_Teclado_LCD.mbas,60 :: 		end if
L__teclaA10:
L__teclaA6:
;Manejo_Teclado_LCD.mbas,62 :: 		end sub
L_end_teclaA:
	RETURN
; end of _teclaA

_teclaB:

;Manejo_Teclado_LCD.mbas,64 :: 		sub procedure teclaB
;Manejo_Teclado_LCD.mbas,65 :: 		if tec = 8 then
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__teclaB125
	MOVLW      8
	XORWF      _tec+0, 0
L__teclaB125:
	BTFSS      STATUS+0, 2
	GOTO       L__teclaB13
;Manejo_Teclado_LCD.mbas,66 :: 		led2 = not led2
	MOVLW
	XORWF      _led2+0, 1
;Manejo_Teclado_LCD.mbas,67 :: 		if led2 = 1 then
	BTFSS      _led2+0, BitPos(_led2+0)
	GOTO       L__teclaB16
;Manejo_Teclado_LCD.mbas,68 :: 		portd.1 = 1
	BSF        PORTD+0, 1
	GOTO       L__teclaB17
;Manejo_Teclado_LCD.mbas,69 :: 		else
L__teclaB16:
;Manejo_Teclado_LCD.mbas,70 :: 		portd.1 = 0
	BCF        PORTD+0, 1
;Manejo_Teclado_LCD.mbas,71 :: 		end if
L__teclaB17:
L__teclaB13:
;Manejo_Teclado_LCD.mbas,73 :: 		end sub
L_end_teclaB:
	RETURN
; end of _teclaB

_correcta:

;Manejo_Teclado_LCD.mbas,75 :: 		sub procedure correcta
;Manejo_Teclado_LCD.mbas,76 :: 		for intentos = 1 to 2  ''Parpadeo de 2 veces los leds (Clave correcta)
	MOVLW      1
	MOVWF      _intentos+0
	CLRF       _intentos+1
L__correcta20:
;Manejo_Teclado_LCD.mbas,77 :: 		portd = 255
	MOVLW      255
	MOVWF      PORTD+0
;Manejo_Teclado_LCD.mbas,78 :: 		pause
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__correcta24:
	DECFSZ     R13+0, 1
	GOTO       L__correcta24
	DECFSZ     R12+0, 1
	GOTO       L__correcta24
	DECFSZ     R11+0, 1
	GOTO       L__correcta24
	NOP
;Manejo_Teclado_LCD.mbas,79 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,80 :: 		pause
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__correcta25:
	DECFSZ     R13+0, 1
	GOTO       L__correcta25
	DECFSZ     R12+0, 1
	GOTO       L__correcta25
	DECFSZ     R11+0, 1
	GOTO       L__correcta25
	NOP
;Manejo_Teclado_LCD.mbas,81 :: 		next intentos
	MOVLW      0
	XORWF      _intentos+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correcta127
	MOVLW      2
	XORWF      _intentos+0, 0
L__correcta127:
	BTFSC      STATUS+0, 2
	GOTO       L__correcta23
	INCF       _intentos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _intentos+1, 1
	GOTO       L__correcta20
L__correcta23:
;Manejo_Teclado_LCD.mbas,82 :: 		end sub
L_end_correcta:
	RETURN
; end of _correcta

_main:

;Manejo_Teclado_LCD.mbas,84 :: 		main:
;Manejo_Teclado_LCD.mbas,85 :: 		anselh = 0
	CLRF       ANSELH+0
;Manejo_Teclado_LCD.mbas,86 :: 		ansel = 0
	CLRF       ANSEL+0
;Manejo_Teclado_LCD.mbas,87 :: 		trisc = 0
	CLRF       TRISC+0
;Manejo_Teclado_LCD.mbas,88 :: 		trisd = 0
	CLRF       TRISD+0
;Manejo_Teclado_LCD.mbas,89 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,90 :: 		Lcd_Init()
	CALL       _Lcd_Init+0
;Manejo_Teclado_LCD.mbas,91 :: 		keypad_init()
	CALL       _Keypad_Init+0
;Manejo_Teclado_LCD.mbas,94 :: 		inicio
	CALL       _inicio+0
;Manejo_Teclado_LCD.mbas,97 :: 		ingresoClave
	CALL       _ingresoClave+0
;Manejo_Teclado_LCD.mbas,98 :: 		clave_ingresada = 0
	CLRF       _clave_ingresada+0
	CLRF       _clave_ingresada+1
;Manejo_Teclado_LCD.mbas,99 :: 		intentos = 0
	CLRF       _intentos+0
	CLRF       _intentos+1
;Manejo_Teclado_LCD.mbas,101 :: 		Ingreso_Clave:
L__main_ingreso_clave:
;Manejo_Teclado_LCD.mbas,102 :: 		clave_ingresada = 0
	CLRF       _clave_ingresada+0
	CLRF       _clave_ingresada+1
;Manejo_Teclado_LCD.mbas,103 :: 		ingresoClave
	CALL       _ingresoClave+0
;Manejo_Teclado_LCD.mbas,105 :: 		while 1
L__main29:
;Manejo_Teclado_LCD.mbas,106 :: 		tec = 0
	CLRF       _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,107 :: 		while tec = 0
L__main34:
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main129
	MOVLW      0
	XORWF      _tec+0, 0
L__main129:
	BTFSS      STATUS+0, 2
	GOTO       L__main35
;Manejo_Teclado_LCD.mbas,108 :: 		tec = keypad_key_click()
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,109 :: 		wend
	GOTO       L__main34
L__main35:
;Manejo_Teclado_LCD.mbas,112 :: 		case 1 valor = 1
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main130
	MOVLW      1
	XORWF      _tec+0, 0
L__main130:
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      1
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main41:
;Manejo_Teclado_LCD.mbas,113 :: 		case 2 valor = 2
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main131
	MOVLW      2
	XORWF      _tec+0, 0
L__main131:
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      2
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main44:
;Manejo_Teclado_LCD.mbas,114 :: 		case 3 valor = 3
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main132
	MOVLW      3
	XORWF      _tec+0, 0
L__main132:
	BTFSS      STATUS+0, 2
	GOTO       L__main47
	MOVLW      3
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main47:
;Manejo_Teclado_LCD.mbas,115 :: 		case 4 valor = 65
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main133
	MOVLW      4
	XORWF      _tec+0, 0
L__main133:
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVLW      65
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main50:
;Manejo_Teclado_LCD.mbas,116 :: 		case 5 valor = 4
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main134
	MOVLW      5
	XORWF      _tec+0, 0
L__main134:
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVLW      4
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main53:
;Manejo_Teclado_LCD.mbas,117 :: 		case 6 valor = 5
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main135
	MOVLW      6
	XORWF      _tec+0, 0
L__main135:
	BTFSS      STATUS+0, 2
	GOTO       L__main56
	MOVLW      5
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main56:
;Manejo_Teclado_LCD.mbas,118 :: 		case 7 valor = 6
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main136
	MOVLW      7
	XORWF      _tec+0, 0
L__main136:
	BTFSS      STATUS+0, 2
	GOTO       L__main59
	MOVLW      6
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main59:
;Manejo_Teclado_LCD.mbas,119 :: 		case 8 valor = 66
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main137
	MOVLW      8
	XORWF      _tec+0, 0
L__main137:
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVLW      66
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main62:
;Manejo_Teclado_LCD.mbas,120 :: 		case 9 valor = 7
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main138
	MOVLW      9
	XORWF      _tec+0, 0
L__main138:
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      7
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main65:
;Manejo_Teclado_LCD.mbas,121 :: 		case 10 valor = 8
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main139
	MOVLW      10
	XORWF      _tec+0, 0
L__main139:
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVLW      8
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main68:
;Manejo_Teclado_LCD.mbas,122 :: 		case 11 valor = 9
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main140
	MOVLW      11
	XORWF      _tec+0, 0
L__main140:
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      9
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main71:
;Manejo_Teclado_LCD.mbas,123 :: 		case 12 valor = 67
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main141
	MOVLW      12
	XORWF      _tec+0, 0
L__main141:
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      67
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main74:
;Manejo_Teclado_LCD.mbas,124 :: 		case 13 valor = 42 'Tecla * (Enter)
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main142
	MOVLW      13
	XORWF      _tec+0, 0
L__main142:
	BTFSS      STATUS+0, 2
	GOTO       L__main77
	MOVLW      42
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main77:
;Manejo_Teclado_LCD.mbas,125 :: 		case 14 valor = 0
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main143
	MOVLW      14
	XORWF      _tec+0, 0
L__main143:
	BTFSS      STATUS+0, 2
	GOTO       L__main80
	CLRF       _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main80:
;Manejo_Teclado_LCD.mbas,126 :: 		case 15 valor = 35
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main144
	MOVLW      15
	XORWF      _tec+0, 0
L__main144:
	BTFSS      STATUS+0, 2
	GOTO       L__main83
	MOVLW      35
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main83:
;Manejo_Teclado_LCD.mbas,127 :: 		case 16 valor = 68
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main145
	MOVLW      16
	XORWF      _tec+0, 0
L__main145:
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	MOVLW      68
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main38
L__main86:
L__main38:
;Manejo_Teclado_LCD.mbas,130 :: 		if valor < 10 then
	MOVLW      0
	SUBWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main146
	MOVLW      10
	SUBWF      _valor+0, 0
L__main146:
	BTFSC      STATUS+0, 0
	GOTO       L__main88
;Manejo_Teclado_LCD.mbas,131 :: 		lcd_chr_cp(48 + valor)
	MOVF       _valor+0, 0
	ADDLW      48
	MOVWF      FARG_Lcd_Chr_CP_Out_Char+0
	CALL       _Lcd_Chr_CP+0
;Manejo_Teclado_LCD.mbas,132 :: 		clave_ingresada = clave_ingresada * 10 + valor
	MOVF       _clave_ingresada+0, 0
	MOVWF      R0+0
	MOVF       _clave_ingresada+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _valor+0, 0
	ADDWF      R0+0, 0
	MOVWF      _clave_ingresada+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _valor+1, 0
	MOVWF      _clave_ingresada+1
L__main88:
;Manejo_Teclado_LCD.mbas,135 :: 		if valor = 42 then 'Comprobar la clave al presionar "*"
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main147
	MOVLW      42
	XORWF      _valor+0, 0
L__main147:
	BTFSS      STATUS+0, 2
	GOTO       L__main91
;Manejo_Teclado_LCD.mbas,136 :: 		if clave_ingresada = CLAVE_CORRECTA then
	MOVF       _clave_ingresada+1, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L__main148
	MOVLW      120
	XORWF      _clave_ingresada+0, 0
L__main148:
	BTFSS      STATUS+0, 2
	GOTO       L__main94
;Manejo_Teclado_LCD.mbas,137 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,138 :: 		lcd_out(1,1,"CORRECTO")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      67
	MOVWF      ?LocalText_main+0
	MOVLW      79
	MOVWF      ?LocalText_main+1
	MOVLW      82
	MOVWF      ?LocalText_main+2
	MOVLW      82
	MOVWF      ?LocalText_main+3
	MOVLW      69
	MOVWF      ?LocalText_main+4
	MOVLW      67
	MOVWF      ?LocalText_main+5
	MOVLW      84
	MOVWF      ?LocalText_main+6
	MOVLW      79
	MOVWF      ?LocalText_main+7
	CLRF       ?LocalText_main+8
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,139 :: 		delay_ms(1000)
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main96:
	DECFSZ     R13+0, 1
	GOTO       L__main96
	DECFSZ     R12+0, 1
	GOTO       L__main96
	DECFSZ     R11+0, 1
	GOTO       L__main96
	NOP
;Manejo_Teclado_LCD.mbas,141 :: 		correcta
	CALL       _correcta+0
;Manejo_Teclado_LCD.mbas,143 :: 		goto Menu
	GOTO       L__main_menu
;Manejo_Teclado_LCD.mbas,144 :: 		else
L__main94:
;Manejo_Teclado_LCD.mbas,145 :: 		intentos = intentos + 1
	INCF       _intentos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _intentos+1, 1
;Manejo_Teclado_LCD.mbas,146 :: 		if intentos = 2 then
	MOVLW      0
	XORWF      _intentos+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main149
	MOVLW      2
	XORWF      _intentos+0, 0
L__main149:
	BTFSS      STATUS+0, 2
	GOTO       L__main99
;Manejo_Teclado_LCD.mbas,148 :: 		while true  'Parpadeo infinito (Clave incorrecta)
L__main102:
;Manejo_Teclado_LCD.mbas,149 :: 		lcd_out(1,1,"INCORRECTO      ")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      73
	MOVWF      ?LocalText_main+0
	MOVLW      78
	MOVWF      ?LocalText_main+1
	MOVLW      67
	MOVWF      ?LocalText_main+2
	MOVLW      79
	MOVWF      ?LocalText_main+3
	MOVLW      82
	MOVWF      ?LocalText_main+4
	MOVLW      82
	MOVWF      ?LocalText_main+5
	MOVLW      69
	MOVWF      ?LocalText_main+6
	MOVLW      67
	MOVWF      ?LocalText_main+7
	MOVLW      84
	MOVWF      ?LocalText_main+8
	MOVLW      79
	MOVWF      ?LocalText_main+9
	MOVLW      32
	MOVWF      ?LocalText_main+10
	MOVLW      32
	MOVWF      ?LocalText_main+11
	MOVLW      32
	MOVWF      ?LocalText_main+12
	MOVLW      32
	MOVWF      ?LocalText_main+13
	MOVLW      32
	MOVWF      ?LocalText_main+14
	MOVLW      32
	MOVWF      ?LocalText_main+15
	CLRF       ?LocalText_main+16
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,150 :: 		portd = 255
	MOVLW      255
	MOVWF      PORTD+0
;Manejo_Teclado_LCD.mbas,151 :: 		pause
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main106:
	DECFSZ     R13+0, 1
	GOTO       L__main106
	DECFSZ     R12+0, 1
	GOTO       L__main106
	DECFSZ     R11+0, 1
	GOTO       L__main106
	NOP
;Manejo_Teclado_LCD.mbas,152 :: 		portd = 0
	CLRF       PORTD+0
;Manejo_Teclado_LCD.mbas,153 :: 		pause
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main107:
	DECFSZ     R13+0, 1
	GOTO       L__main107
	DECFSZ     R12+0, 1
	GOTO       L__main107
	DECFSZ     R11+0, 1
	GOTO       L__main107
	NOP
;Manejo_Teclado_LCD.mbas,154 :: 		wend
	GOTO       L__main102
L__main99:
;Manejo_Teclado_LCD.mbas,156 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,157 :: 		lcd_out(1,1,"INCORRECTO      ")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      73
	MOVWF      ?LocalText_main+0
	MOVLW      78
	MOVWF      ?LocalText_main+1
	MOVLW      67
	MOVWF      ?LocalText_main+2
	MOVLW      79
	MOVWF      ?LocalText_main+3
	MOVLW      82
	MOVWF      ?LocalText_main+4
	MOVLW      82
	MOVWF      ?LocalText_main+5
	MOVLW      69
	MOVWF      ?LocalText_main+6
	MOVLW      67
	MOVWF      ?LocalText_main+7
	MOVLW      84
	MOVWF      ?LocalText_main+8
	MOVLW      79
	MOVWF      ?LocalText_main+9
	MOVLW      32
	MOVWF      ?LocalText_main+10
	MOVLW      32
	MOVWF      ?LocalText_main+11
	MOVLW      32
	MOVWF      ?LocalText_main+12
	MOVLW      32
	MOVWF      ?LocalText_main+13
	MOVLW      32
	MOVWF      ?LocalText_main+14
	MOVLW      32
	MOVWF      ?LocalText_main+15
	CLRF       ?LocalText_main+16
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,158 :: 		delay_ms(1000)
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main108:
	DECFSZ     R13+0, 1
	GOTO       L__main108
	DECFSZ     R12+0, 1
	GOTO       L__main108
	DECFSZ     R11+0, 1
	GOTO       L__main108
	NOP
;Manejo_Teclado_LCD.mbas,159 :: 		goto Ingreso_Clave
	GOTO       L__main_ingreso_clave
;Manejo_Teclado_LCD.mbas,160 :: 		end if
L__main91:
;Manejo_Teclado_LCD.mbas,162 :: 		wend
	GOTO       L__main29
;Manejo_Teclado_LCD.mbas,164 :: 		Menu:
L__main_menu:
;Manejo_Teclado_LCD.mbas,165 :: 		menu
	CALL       _menu+0
;Manejo_Teclado_LCD.mbas,168 :: 		while 1
L__main110:
;Manejo_Teclado_LCD.mbas,169 :: 		tec = 0
	CLRF       _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,170 :: 		while tec = 0
L__main115:
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main150
	MOVLW      0
	XORWF      _tec+0, 0
L__main150:
	BTFSS      STATUS+0, 2
	GOTO       L__main116
;Manejo_Teclado_LCD.mbas,171 :: 		tec = keypad_key_click()
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,172 :: 		wend
	GOTO       L__main115
L__main116:
;Manejo_Teclado_LCD.mbas,173 :: 		teclaA
	CALL       _teclaA+0
;Manejo_Teclado_LCD.mbas,174 :: 		teclaB
	CALL       _teclaB+0
;Manejo_Teclado_LCD.mbas,175 :: 		wend
	GOTO       L__main110
L_end_main:
	GOTO       $+0
; end of _main
