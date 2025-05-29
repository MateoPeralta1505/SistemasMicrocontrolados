
_main:

;Manejo_Teclado_LCD.mbas,28 :: 		main:
;Manejo_Teclado_LCD.mbas,29 :: 		ansel = 1
	MOVLW      1
	MOVWF      ANSEL+0
;Manejo_Teclado_LCD.mbas,30 :: 		anselh = 0
	CLRF       ANSELH+0
;Manejo_Teclado_LCD.mbas,31 :: 		trisa = 1
	MOVLW      1
	MOVWF      TRISA+0
;Manejo_Teclado_LCD.mbas,32 :: 		trisc.2 = 0
	BCF        TRISC+0, 2
;Manejo_Teclado_LCD.mbas,33 :: 		portc.2 = 0
	BCF        PORTC+0, 2
;Manejo_Teclado_LCD.mbas,35 :: 		Lcd_init()
	CALL       _Lcd_Init+0
;Manejo_Teclado_LCD.mbas,36 :: 		Lcd_cmd(_lcd_cursor_off)
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Manejo_Teclado_LCD.mbas,37 :: 		Lcd_out(1, 1, "PWM: ")
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      80
	MOVWF      ?LocalText_main+0
	MOVLW      87
	MOVWF      ?LocalText_main+1
	MOVLW      77
	MOVWF      ?LocalText_main+2
	MOVLW      58
	MOVWF      ?LocalText_main+3
	MOVLW      32
	MOVWF      ?LocalText_main+4
	CLRF       ?LocalText_main+5
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,38 :: 		Lcd_out(2, 1, "ADC: ")
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      65
	MOVWF      ?LocalText_main+0
	MOVLW      68
	MOVWF      ?LocalText_main+1
	MOVLW      67
	MOVWF      ?LocalText_main+2
	MOVLW      58
	MOVWF      ?LocalText_main+3
	MOVLW      32
	MOVWF      ?LocalText_main+4
	CLRF       ?LocalText_main+5
	MOVLW      ?LocalText_main+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,39 :: 		ADC_Init()
	CALL       _ADC_Init+0
;Manejo_Teclado_LCD.mbas,40 :: 		PWM1_Init(5000)
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Manejo_Teclado_LCD.mbas,41 :: 		PWM1_Start()
	CALL       _PWM1_Start+0
;Manejo_Teclado_LCD.mbas,42 :: 		PWM1_Set_Duty(0)
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Manejo_Teclado_LCD.mbas,44 :: 		while (1)
L__main2:
;Manejo_Teclado_LCD.mbas,45 :: 		dato = ADC_Read(0)
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _dato+0
	MOVF       R0+1, 0
	MOVWF      _dato+1
;Manejo_Teclado_LCD.mbas,46 :: 		valor = dato / 4
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      _valor+0
;Manejo_Teclado_LCD.mbas,47 :: 		WordToStr(valor, txt_pwm)
	MOVF       R2+0, 0
	MOVWF      FARG_WordToStr_input+0
	CLRF       FARG_WordToStr_input+1
	MOVLW      _txt_pwm+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,48 :: 		WordToStr(dato, txt_adc)
	MOVF       _dato+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _dato+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt_adc+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;Manejo_Teclado_LCD.mbas,49 :: 		Lcd_Out(1, 6, txt_pwm)
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt_pwm+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,50 :: 		Lcd_Out(2, 6, txt_adc)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt_adc+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Manejo_Teclado_LCD.mbas,51 :: 		PWM1_Set_Duty(valor)
	MOVF       _valor+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Manejo_Teclado_LCD.mbas,52 :: 		wend
	GOTO       L__main2
L_end_main:
	GOTO       $+0
; end of _main
