
_borrar:

;Manejo_Teclado_LCD.mbas,30 :: 		sub procedure borrar
;Manejo_Teclado_LCD.mbas,31 :: 		pause
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__borrar1:
	DECFSZ     R13+0, 1
	GOTO       L__borrar1
	DECFSZ     R12+0, 1
	GOTO       L__borrar1
	DECFSZ     R11+0, 1
	GOTO       L__borrar1
	NOP
;Manejo_Teclado_LCD.mbas,32 :: 		lcd_cmd(_lcd_clear)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,33 :: 		lcd_out(1, 1, "Valor:")
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
;Manejo_Teclado_LCD.mbas,34 :: 		dato=0
	CLRF       _dato+0
	CLRF       _dato+1
;Manejo_Teclado_LCD.mbas,35 :: 		end sub
L_end_borrar:
	RETURN
; end of _borrar

_main:

;Manejo_Teclado_LCD.mbas,40 :: 		main:
;Manejo_Teclado_LCD.mbas,42 :: 		anselh = 0
	CLRF       ANSELH+0
;Manejo_Teclado_LCD.mbas,43 :: 		dato = 0
	CLRF       _dato+0
	CLRF       _dato+1
;Manejo_Teclado_LCD.mbas,44 :: 		trisc = 0
	CLRF       TRISC+0
;Manejo_Teclado_LCD.mbas,45 :: 		Lcd_Init()
	CALL       _Lcd_Init+0
;Manejo_Teclado_LCD.mbas,46 :: 		keypad_init()
	CALL       _Keypad_Init+0
;Manejo_Teclado_LCD.mbas,48 :: 		lcd_out(1, 1, "Valor:")
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
;Manejo_Teclado_LCD.mbas,50 :: 		while (1)
L__main4:
;Manejo_Teclado_LCD.mbas,51 :: 		tec = 0
	CLRF       _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,52 :: 		while(tec = 0)
L__main9:
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main85
	MOVLW      0
	XORWF      _tec+0, 0
L__main85:
	BTFSS      STATUS+0, 2
	GOTO       L__main10
;Manejo_Teclado_LCD.mbas,53 :: 		tec = keypad_key_click()
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _tec+0
	CLRF       _tec+1
;Manejo_Teclado_LCD.mbas,54 :: 		wend
	GOTO       L__main9
L__main10:
;Manejo_Teclado_LCD.mbas,57 :: 		case 1 valor = 1
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main86
	MOVLW      1
	XORWF      _tec+0, 0
L__main86:
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      1
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main16:
;Manejo_Teclado_LCD.mbas,58 :: 		case 2 valor = 2
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main87
	MOVLW      2
	XORWF      _tec+0, 0
L__main87:
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      2
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main19:
;Manejo_Teclado_LCD.mbas,59 :: 		case 3 valor = 3
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main88
	MOVLW      3
	XORWF      _tec+0, 0
L__main88:
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      3
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main22:
;Manejo_Teclado_LCD.mbas,60 :: 		case 4 valor = 65
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main89
	MOVLW      4
	XORWF      _tec+0, 0
L__main89:
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      65
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main25:
;Manejo_Teclado_LCD.mbas,61 :: 		case 5 valor = 4
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main90
	MOVLW      5
	XORWF      _tec+0, 0
L__main90:
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      4
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main28:
;Manejo_Teclado_LCD.mbas,62 :: 		case 6 valor = 5
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main91
	MOVLW      6
	XORWF      _tec+0, 0
L__main91:
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      5
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main31:
;Manejo_Teclado_LCD.mbas,63 :: 		case 7 valor = 6
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main92
	MOVLW      7
	XORWF      _tec+0, 0
L__main92:
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      6
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main34:
;Manejo_Teclado_LCD.mbas,64 :: 		case 8 valor = 66
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	MOVLW      8
	XORWF      _tec+0, 0
L__main93:
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      66
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main37:
;Manejo_Teclado_LCD.mbas,65 :: 		case 9 valor = 7
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVLW      9
	XORWF      _tec+0, 0
L__main94:
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      7
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main40:
;Manejo_Teclado_LCD.mbas,66 :: 		case 10 valor = 8
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main95
	MOVLW      10
	XORWF      _tec+0, 0
L__main95:
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      8
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main43:
;Manejo_Teclado_LCD.mbas,67 :: 		case 11 valor = 9
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main96
	MOVLW      11
	XORWF      _tec+0, 0
L__main96:
	BTFSS      STATUS+0, 2
	GOTO       L__main46
	MOVLW      9
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main46:
;Manejo_Teclado_LCD.mbas,68 :: 		case 12 valor = 67
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main97
	MOVLW      12
	XORWF      _tec+0, 0
L__main97:
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVLW      67
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main49:
;Manejo_Teclado_LCD.mbas,69 :: 		case 13 valor = 42
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main98
	MOVLW      13
	XORWF      _tec+0, 0
L__main98:
	BTFSS      STATUS+0, 2
	GOTO       L__main52
	MOVLW      42
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main52:
;Manejo_Teclado_LCD.mbas,70 :: 		case 14 valor = 0
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main99
	MOVLW      14
	XORWF      _tec+0, 0
L__main99:
	BTFSS      STATUS+0, 2
	GOTO       L__main55
	CLRF       _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main55:
;Manejo_Teclado_LCD.mbas,71 :: 		case 15 valor = 35
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main100
	MOVLW      15
	XORWF      _tec+0, 0
L__main100:
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVLW      35
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main58:
;Manejo_Teclado_LCD.mbas,72 :: 		case 16 valor = 68
	MOVLW      0
	XORWF      _tec+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main101
	MOVLW      16
	XORWF      _tec+0, 0
L__main101:
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVLW      68
	MOVWF      _valor+0
	CLRF       _valor+1
	GOTO       L__main13
L__main61:
L__main13:
;Manejo_Teclado_LCD.mbas,76 :: 		if valor < 10 then
	MOVLW      0
	SUBWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main102
	MOVLW      10
	SUBWF      _valor+0, 0
L__main102:
	BTFSC      STATUS+0, 0
	GOTO       L__main63
;Manejo_Teclado_LCD.mbas,77 :: 		ByteToStr(valor, txt)
	MOVF       _valor+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _txt+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;Manejo_Teclado_LCD.mbas,78 :: 		ltrim(txt)
	MOVLW      _txt+0
	MOVWF      FARG_ltrim_astring+0
	CALL       _ltrim+0
;Manejo_Teclado_LCD.mbas,79 :: 		lcd_out_cp(txt)
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Manejo_Teclado_LCD.mbas,80 :: 		dato = dato*10 + valor
	MOVF       _dato+0, 0
	MOVWF      R0+0
	MOVF       _dato+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Mul_16x16_U+0
	MOVF       _valor+0, 0
	ADDWF      R0+0, 0
	MOVWF      _dato+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _valor+1, 0
	MOVWF      _dato+1
L__main63:
;Manejo_Teclado_LCD.mbas,84 :: 		if (valor = 35) then
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main103
	MOVLW      35
	XORWF      _valor+0, 0
L__main103:
	BTFSS      STATUS+0, 2
	GOTO       L__main66
;Manejo_Teclado_LCD.mbas,85 :: 		for conta = dato to 0 step -1
	MOVF       _dato+0, 0
	MOVWF      _conta+0
	MOVF       _dato+1, 0
	MOVWF      _conta+1
	MOVLW      0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main104
	MOVLW      0
	SUBWF      _dato+0, 0
L__main104:
	BTFSS      STATUS+0, 0
	GOTO       L__main72
L__main69:
;Manejo_Teclado_LCD.mbas,86 :: 		WordToStr(conta,txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,87 :: 		lcd_out(2,7,txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,88 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main73:
	DECFSZ     R13+0, 1
	GOTO       L__main73
	DECFSZ     R12+0, 1
	GOTO       L__main73
	DECFSZ     R11+0, 1
	GOTO       L__main73
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,89 :: 		next conta
	MOVLW      0
	XORWF      _conta+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main105
	MOVLW      0
	XORWF      _conta+0, 0
L__main105:
	BTFSC      STATUS+0, 2
	GOTO       L__main72
	MOVLW      255
	ADDWF      _conta+0, 1
	BTFSC      STATUS+0, 0
	INCF       _conta+1, 1
	DECF       _conta+1, 1
	GOTO       L__main69
L__main72:
;Manejo_Teclado_LCD.mbas,90 :: 		borrar
	CALL       _borrar+0
L__main66:
;Manejo_Teclado_LCD.mbas,93 :: 		if (valor = 42) then
	MOVLW      0
	XORWF      _valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main106
	MOVLW      42
	XORWF      _valor+0, 0
L__main106:
	BTFSS      STATUS+0, 2
	GOTO       L__main75
;Manejo_Teclado_LCD.mbas,94 :: 		for conta=0 to dato
	CLRF       _conta+0
	CLRF       _conta+1
L__main77:
	MOVF       _conta+1, 0
	SUBWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main107
	MOVF       _conta+0, 0
	SUBWF      _dato+0, 0
L__main107:
	BTFSS      STATUS+0, 0
	GOTO       L__main81
;Manejo_Teclado_LCD.mbas,95 :: 		WordToStr(conta,txt1)
	MOVF       _conta+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _conta+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,96 :: 		lcd_out(2,7,txt1)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,97 :: 		pdes
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main82:
	DECFSZ     R13+0, 1
	GOTO       L__main82
	DECFSZ     R12+0, 1
	GOTO       L__main82
	DECFSZ     R11+0, 1
	GOTO       L__main82
	NOP
	NOP
;Manejo_Teclado_LCD.mbas,98 :: 		next conta
	MOVF       _conta+1, 0
	XORWF      _dato+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main108
	MOVF       _dato+0, 0
	XORWF      _conta+0, 0
L__main108:
	BTFSC      STATUS+0, 2
	GOTO       L__main81
	INCF       _conta+0, 1
	BTFSC      STATUS+0, 2
	INCF       _conta+1, 1
	GOTO       L__main77
L__main81:
;Manejo_Teclado_LCD.mbas,99 :: 		borrar
	CALL       _borrar+0
L__main75:
;Manejo_Teclado_LCD.mbas,101 :: 		wend
	GOTO       L__main4
L_end_main:
	GOTO       $+0
; end of _main
