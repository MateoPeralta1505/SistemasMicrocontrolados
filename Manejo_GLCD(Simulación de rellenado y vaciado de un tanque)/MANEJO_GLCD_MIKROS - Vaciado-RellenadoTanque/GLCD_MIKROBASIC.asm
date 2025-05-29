
_pintar_bloque:

;GLCD_MIKROBASIC.mbas,23 :: 		sub procedure pintar_bloque(dim x1, y1, x2, y2 as byte)
;GLCD_MIKROBASIC.mbas,24 :: 		for y = y2 to y1 step -1
	MOVF       FARG_pintar_bloque_y2+0, 0
	MOVWF      _y+0
L__pintar_bloque1:
	MOVF       FARG_pintar_bloque_y1+0, 0
	SUBWF      _y+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__pintar_bloque5
;GLCD_MIKROBASIC.mbas,25 :: 		Glcd_Line(x1, y, x2, y, 1)
	MOVF       FARG_pintar_bloque_x1+0, 0
	MOVWF      FARG_Glcd_Line_x_start+0
	CLRF       FARG_Glcd_Line_x_start+1
	MOVF       _y+0, 0
	MOVWF      FARG_Glcd_Line_y_start+0
	CLRF       FARG_Glcd_Line_y_start+1
	MOVF       FARG_pintar_bloque_x2+0, 0
	MOVWF      FARG_Glcd_Line_x_end+0
	CLRF       FARG_Glcd_Line_x_end+1
	MOVF       _y+0, 0
	MOVWF      FARG_Glcd_Line_y_end+0
	CLRF       FARG_Glcd_Line_y_end+1
	MOVLW      1
	MOVWF      FARG_Glcd_Line_color+0
	CALL       _Glcd_Line+0
;GLCD_MIKROBASIC.mbas,26 :: 		Delay_ms(10) ' Controla la velocidad del "pintado"
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L__pintar_bloque6:
	DECFSZ     R13+0, 1
	GOTO       L__pintar_bloque6
	DECFSZ     R12+0, 1
	GOTO       L__pintar_bloque6
	NOP
;GLCD_MIKROBASIC.mbas,27 :: 		next y
	MOVF       _y+0, 0
	XORWF      FARG_pintar_bloque_y1+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L__pintar_bloque5
	MOVLW      255
	ADDWF      _y+0, 1
	GOTO       L__pintar_bloque1
L__pintar_bloque5:
;GLCD_MIKROBASIC.mbas,28 :: 		end sub
L_end_pintar_bloque:
	RETURN
; end of _pintar_bloque

_dibujarPantalla:

;GLCD_MIKROBASIC.mbas,30 :: 		sub procedure dibujarPantalla()
;GLCD_MIKROBASIC.mbas,31 :: 		Glcd_Fill(0)
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GLCD_MIKROBASIC.mbas,32 :: 		Glcd_Rectangle(5, 5, 20, 60, 1) ''60
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GLCD_MIKROBASIC.mbas,34 :: 		Glcd_Write_text("lleno", 25, 0, 1)
	MOVLW      108
	MOVWF      ?LocalText_dibujarPantalla+0
	MOVLW      108
	MOVWF      ?LocalText_dibujarPantalla+1
	MOVLW      101
	MOVWF      ?LocalText_dibujarPantalla+2
	MOVLW      110
	MOVWF      ?LocalText_dibujarPantalla+3
	MOVLW      111
	MOVWF      ?LocalText_dibujarPantalla+4
	CLRF       ?LocalText_dibujarPantalla+5
	MOVLW      ?LocalText_dibujarPantalla+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	CLRF       FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GLCD_MIKROBASIC.mbas,35 :: 		Glcd_Write_text("3/4", 25, 2, 1)
	MOVLW      51
	MOVWF      ?LocalText_dibujarPantalla+0
	MOVLW      47
	MOVWF      ?LocalText_dibujarPantalla+1
	MOVLW      52
	MOVWF      ?LocalText_dibujarPantalla+2
	CLRF       ?LocalText_dibujarPantalla+3
	MOVLW      ?LocalText_dibujarPantalla+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      2
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GLCD_MIKROBASIC.mbas,36 :: 		Glcd_Write_text("2/4", 25, 4, 1)
	MOVLW      50
	MOVWF      ?LocalText_dibujarPantalla+0
	MOVLW      47
	MOVWF      ?LocalText_dibujarPantalla+1
	MOVLW      52
	MOVWF      ?LocalText_dibujarPantalla+2
	CLRF       ?LocalText_dibujarPantalla+3
	MOVLW      ?LocalText_dibujarPantalla+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      4
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GLCD_MIKROBASIC.mbas,37 :: 		Glcd_Write_text("1/4", 25, 6, 1)
	MOVLW      49
	MOVWF      ?LocalText_dibujarPantalla+0
	MOVLW      47
	MOVWF      ?LocalText_dibujarPantalla+1
	MOVLW      52
	MOVWF      ?LocalText_dibujarPantalla+2
	CLRF       ?LocalText_dibujarPantalla+3
	MOVLW      ?LocalText_dibujarPantalla+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      6
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GLCD_MIKROBASIC.mbas,38 :: 		Glcd_Write_text("Vacio", 25, 7, 1)
	MOVLW      86
	MOVWF      ?LocalText_dibujarPantalla+0
	MOVLW      97
	MOVWF      ?LocalText_dibujarPantalla+1
	MOVLW      99
	MOVWF      ?LocalText_dibujarPantalla+2
	MOVLW      105
	MOVWF      ?LocalText_dibujarPantalla+3
	MOVLW      111
	MOVWF      ?LocalText_dibujarPantalla+4
	CLRF       ?LocalText_dibujarPantalla+5
	MOVLW      ?LocalText_dibujarPantalla+0
	MOVWF      FARG_Glcd_Write_Text_text+0
	MOVLW      25
	MOVWF      FARG_Glcd_Write_Text_x_pos+0
	MOVLW      7
	MOVWF      FARG_Glcd_Write_Text_page_num+0
	MOVLW      1
	MOVWF      FARG_Glcd_Write_Text_color+0
	CALL       _Glcd_Write_Text+0
;GLCD_MIKROBASIC.mbas,39 :: 		end sub
L_end_dibujarPantalla:
	RETURN
; end of _dibujarPantalla

_main:

;GLCD_MIKROBASIC.mbas,41 :: 		main:
;GLCD_MIKROBASIC.mbas,42 :: 		anselh = 0
	CLRF       ANSELH+0
;GLCD_MIKROBASIC.mbas,43 :: 		ansel = 0
	CLRF       ANSEL+0
;GLCD_MIKROBASIC.mbas,44 :: 		trisb = %00000011
	MOVLW      3
	MOVWF      TRISB+0
;GLCD_MIKROBASIC.mbas,45 :: 		boton = 0
	CLRF       _boton+0
;GLCD_MIKROBASIC.mbas,46 :: 		borrars = 1
	MOVLW      1
	MOVWF      _borrars+0
;GLCD_MIKROBASIC.mbas,48 :: 		Glcd_Init()
	CALL       _Glcd_Init+0
;GLCD_MIKROBASIC.mbas,49 :: 		Glcd_Fill(0)
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GLCD_MIKROBASIC.mbas,50 :: 		Delay_ms(1000)
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L__main9:
	DECFSZ     R13+0, 1
	GOTO       L__main9
	DECFSZ     R12+0, 1
	GOTO       L__main9
	DECFSZ     R11+0, 1
	GOTO       L__main9
	NOP
;GLCD_MIKROBASIC.mbas,51 :: 		dibujarPantalla()
	CALL       _dibujarPantalla+0
;GLCD_MIKROBASIC.mbas,53 :: 		while (1)
L__main11:
;GLCD_MIKROBASIC.mbas,54 :: 		if (Portb.0 = 1) and (boton = 0) then pr
	BTFSC      PORTB+0, 0
	GOTO       L__main44
	BCF        114, 0
	GOTO       L__main45
L__main44:
	BSF        114, 0
L__main45:
	MOVF       _boton+0, 0
	XORLW      0
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main16
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main18:
	DECFSZ     R13+0, 1
	GOTO       L__main18
	DECFSZ     R12+0, 1
	GOTO       L__main18
	DECFSZ     R11+0, 1
	GOTO       L__main18
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,55 :: 		Glcd_Rectangle(5, 5, 20, 60, 1)
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GLCD_MIKROBASIC.mbas,56 :: 		Delay_ms(15)
	MOVLW      98
	MOVWF      R12+0
	MOVLW      101
	MOVWF      R13+0
L__main19:
	DECFSZ     R13+0, 1
	GOTO       L__main19
	DECFSZ     R12+0, 1
	GOTO       L__main19
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,57 :: 		boton = 1
	MOVLW      1
	MOVWF      _boton+0
L__main16:
;GLCD_MIKROBASIC.mbas,60 :: 		if (Portb.0 = 1) and (boton = 1) then pr
	BTFSC      PORTB+0, 0
	GOTO       L__main46
	BCF        114, 0
	GOTO       L__main47
L__main46:
	BSF        114, 0
L__main47:
	MOVF       _boton+0, 0
	XORLW      1
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main21
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main23:
	DECFSZ     R13+0, 1
	GOTO       L__main23
	DECFSZ     R12+0, 1
	GOTO       L__main23
	DECFSZ     R11+0, 1
	GOTO       L__main23
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,61 :: 		pintar_bloque(6, 47, 19, 59) ' bloque 1
	MOVLW      6
	MOVWF      FARG_pintar_bloque_x1+0
	MOVLW      47
	MOVWF      FARG_pintar_bloque_y1+0
	MOVLW      19
	MOVWF      FARG_pintar_bloque_x2+0
	MOVLW      59
	MOVWF      FARG_pintar_bloque_y2+0
	CALL       _pintar_bloque+0
;GLCD_MIKROBASIC.mbas,62 :: 		boton = 2
	MOVLW      2
	MOVWF      _boton+0
L__main21:
;GLCD_MIKROBASIC.mbas,65 :: 		if (Portb.0 = 1) and (boton = 2) then pr
	BTFSC      PORTB+0, 0
	GOTO       L__main48
	BCF        114, 0
	GOTO       L__main49
L__main48:
	BSF        114, 0
L__main49:
	MOVF       _boton+0, 0
	XORLW      2
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main25
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main27:
	DECFSZ     R13+0, 1
	GOTO       L__main27
	DECFSZ     R12+0, 1
	GOTO       L__main27
	DECFSZ     R11+0, 1
	GOTO       L__main27
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,66 :: 		pintar_bloque(6, 34, 19, 46) ' bloque  2
	MOVLW      6
	MOVWF      FARG_pintar_bloque_x1+0
	MOVLW      34
	MOVWF      FARG_pintar_bloque_y1+0
	MOVLW      19
	MOVWF      FARG_pintar_bloque_x2+0
	MOVLW      46
	MOVWF      FARG_pintar_bloque_y2+0
	CALL       _pintar_bloque+0
;GLCD_MIKROBASIC.mbas,67 :: 		boton = 3
	MOVLW      3
	MOVWF      _boton+0
L__main25:
;GLCD_MIKROBASIC.mbas,70 :: 		if (Portb.0 = 1) and (boton = 3) then pr
	BTFSC      PORTB+0, 0
	GOTO       L__main50
	BCF        114, 0
	GOTO       L__main51
L__main50:
	BSF        114, 0
L__main51:
	MOVF       _boton+0, 0
	XORLW      3
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main29
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main31:
	DECFSZ     R13+0, 1
	GOTO       L__main31
	DECFSZ     R12+0, 1
	GOTO       L__main31
	DECFSZ     R11+0, 1
	GOTO       L__main31
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,71 :: 		pintar_bloque(6, 21, 19, 33) ' bloque  3
	MOVLW      6
	MOVWF      FARG_pintar_bloque_x1+0
	MOVLW      21
	MOVWF      FARG_pintar_bloque_y1+0
	MOVLW      19
	MOVWF      FARG_pintar_bloque_x2+0
	MOVLW      33
	MOVWF      FARG_pintar_bloque_y2+0
	CALL       _pintar_bloque+0
;GLCD_MIKROBASIC.mbas,72 :: 		boton = 4
	MOVLW      4
	MOVWF      _boton+0
L__main29:
;GLCD_MIKROBASIC.mbas,75 :: 		if (Portb.0 = 1) and (boton = 4) then pr
	BTFSC      PORTB+0, 0
	GOTO       L__main52
	BCF        114, 0
	GOTO       L__main53
L__main52:
	BSF        114, 0
L__main53:
	MOVF       _boton+0, 0
	XORLW      4
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main33
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main35:
	DECFSZ     R13+0, 1
	GOTO       L__main35
	DECFSZ     R12+0, 1
	GOTO       L__main35
	DECFSZ     R11+0, 1
	GOTO       L__main35
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,76 :: 		pintar_bloque(6, 6, 19, 20) ' bloque 4
	MOVLW      6
	MOVWF      FARG_pintar_bloque_x1+0
	MOVLW      6
	MOVWF      FARG_pintar_bloque_y1+0
	MOVLW      19
	MOVWF      FARG_pintar_bloque_x2+0
	MOVLW      20
	MOVWF      FARG_pintar_bloque_y2+0
	CALL       _pintar_bloque+0
;GLCD_MIKROBASIC.mbas,77 :: 		boton = 5
	MOVLW      5
	MOVWF      _boton+0
L__main33:
;GLCD_MIKROBASIC.mbas,80 :: 		if (Portb.1 = 1) and (borrars = 1) then pr
	BTFSC      PORTB+0, 1
	GOTO       L__main54
	BCF        114, 0
	GOTO       L__main55
L__main54:
	BSF        114, 0
L__main55:
	MOVF       _borrars+0, 0
	XORLW      1
	MOVLW      255
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	CLRF       R0+0
	BTFSC      114, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L__main37
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L__main39:
	DECFSZ     R13+0, 1
	GOTO       L__main39
	DECFSZ     R12+0, 1
	GOTO       L__main39
	DECFSZ     R11+0, 1
	GOTO       L__main39
	NOP
	NOP
;GLCD_MIKROBASIC.mbas,81 :: 		Glcd_Box(6, 6, 19, 20, 0)
	MOVLW      6
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      6
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      19
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      20
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	CLRF       FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;GLCD_MIKROBASIC.mbas,82 :: 		Glcd_Box(6, 21, 19, 33, 0)
	MOVLW      6
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      21
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      19
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      33
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	CLRF       FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;GLCD_MIKROBASIC.mbas,83 :: 		Glcd_Box(6, 34, 19, 46, 0)
	MOVLW      6
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      34
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      19
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      46
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	CLRF       FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;GLCD_MIKROBASIC.mbas,84 :: 		Glcd_Box(6, 47, 19, 59, 0)
	MOVLW      6
	MOVWF      FARG_Glcd_Box_x_upper_left+0
	MOVLW      47
	MOVWF      FARG_Glcd_Box_y_upper_left+0
	MOVLW      19
	MOVWF      FARG_Glcd_Box_x_bottom_right+0
	MOVLW      59
	MOVWF      FARG_Glcd_Box_y_bottom_right+0
	CLRF       FARG_Glcd_Box_color+0
	CALL       _Glcd_Box+0
;GLCD_MIKROBASIC.mbas,85 :: 		Glcd_Rectangle(5, 5, 20, 60, 1)
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      5
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      20
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      60
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GLCD_MIKROBASIC.mbas,86 :: 		boton = 1
	MOVLW      1
	MOVWF      _boton+0
;GLCD_MIKROBASIC.mbas,87 :: 		Delay_ms(20)
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L__main40:
	DECFSZ     R13+0, 1
	GOTO       L__main40
	DECFSZ     R12+0, 1
	GOTO       L__main40
	NOP
	NOP
L__main37:
;GLCD_MIKROBASIC.mbas,89 :: 		wend
	GOTO       L__main11
L_end_main:
	GOTO       $+0
; end of _main
