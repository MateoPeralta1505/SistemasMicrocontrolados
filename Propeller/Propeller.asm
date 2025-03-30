
_main:

;Propeller.mbas,44 :: 		main:
;Propeller.mbas,45 :: 		anselh = 0   'Puerto B como digital
	CLRF       ANSELH+0
;Propeller.mbas,46 :: 		trisb = 255  'Puerto B como entrada (pulsantes)
	MOVLW      255
	MOVWF      TRISB+0
;Propeller.mbas,47 :: 		trisd = 0    'Puerto D como salida
	CLRF       TRISD+0
;Propeller.mbas,48 :: 		portd = 0    'Puerto D empieza en 0
	CLRF       PORTD+0
;Propeller.mbas,51 :: 		while(1)
L__main2:
;Propeller.mbas,53 :: 		for repet = 0 to 7
	CLRF       _repet+0
L__main7:
;Propeller.mbas,54 :: 		portd = 255
	MOVLW      255
	MOVWF      PORTD+0
;Propeller.mbas,55 :: 		pausep
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L__main11:
	DECFSZ     R13+0, 1
	GOTO       L__main11
	DECFSZ     R12+0, 1
	GOTO       L__main11
	DECFSZ     R11+0, 1
	GOTO       L__main11
	NOP
	NOP
;Propeller.mbas,56 :: 		portd = 0  'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,57 :: 		pausep
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L__main12:
	DECFSZ     R13+0, 1
	GOTO       L__main12
	DECFSZ     R12+0, 1
	GOTO       L__main12
	DECFSZ     R11+0, 1
	GOTO       L__main12
	NOP
	NOP
;Propeller.mbas,58 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L__main10
	INCF       _repet+0, 1
	GOTO       L__main7
L__main10:
;Propeller.mbas,62 :: 		for repet = 0 to 255
	CLRF       _repet+0
L__main14:
;Propeller.mbas,63 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main19:
;Propeller.mbas,64 :: 		portd = h[veces]  'Se visualiza la letra H "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _h+0
	MOVWF      R0+0
	MOVLW      hi_addr(_h+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,65 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main23:
	DECFSZ     R13+0, 1
	GOTO       L__main23
	DECFSZ     R12+0, 1
	GOTO       L__main23
	NOP
	NOP
;Propeller.mbas,66 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main22
	INCF       _veces+0, 1
	GOTO       L__main19
L__main22:
;Propeller.mbas,68 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,69 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main24:
	DECFSZ     R13+0, 1
	GOTO       L__main24
	DECFSZ     R12+0, 1
	GOTO       L__main24
	NOP
	NOP
;Propeller.mbas,71 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main26:
;Propeller.mbas,72 :: 		portd = o[veces] 'Se visualiza la letra O "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _o+0
	MOVWF      R0+0
	MOVLW      hi_addr(_o+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,73 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main30:
	DECFSZ     R13+0, 1
	GOTO       L__main30
	DECFSZ     R12+0, 1
	GOTO       L__main30
	NOP
	NOP
;Propeller.mbas,74 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main29
	INCF       _veces+0, 1
	GOTO       L__main26
L__main29:
;Propeller.mbas,76 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,77 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main31:
	DECFSZ     R13+0, 1
	GOTO       L__main31
	DECFSZ     R12+0, 1
	GOTO       L__main31
	NOP
	NOP
;Propeller.mbas,79 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main33:
;Propeller.mbas,80 :: 		portd = l[veces] 'Se visualiza la letra L "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _l+0
	MOVWF      R0+0
	MOVLW      hi_addr(_l+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,81 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main37:
	DECFSZ     R13+0, 1
	GOTO       L__main37
	DECFSZ     R12+0, 1
	GOTO       L__main37
	NOP
	NOP
;Propeller.mbas,82 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main36
	INCF       _veces+0, 1
	GOTO       L__main33
L__main36:
;Propeller.mbas,84 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,85 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main38:
	DECFSZ     R13+0, 1
	GOTO       L__main38
	DECFSZ     R12+0, 1
	GOTO       L__main38
	NOP
	NOP
;Propeller.mbas,87 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main40:
;Propeller.mbas,88 :: 		portd = a[veces] 'Se visualiza la letra A "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _a+0
	MOVWF      R0+0
	MOVLW      hi_addr(_a+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,89 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main44:
	DECFSZ     R13+0, 1
	GOTO       L__main44
	DECFSZ     R12+0, 1
	GOTO       L__main44
	NOP
	NOP
;Propeller.mbas,90 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main43
	INCF       _veces+0, 1
	GOTO       L__main40
L__main43:
;Propeller.mbas,93 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,94 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main45:
	DECFSZ     R13+0, 1
	GOTO       L__main45
	DECFSZ     R12+0, 1
	GOTO       L__main45
;Propeller.mbas,96 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__main17
	INCF       _repet+0, 1
	GOTO       L__main14
L__main17:
;Propeller.mbas,97 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,98 :: 		pausec 'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main46:
	DECFSZ     R13+0, 1
	GOTO       L__main46
	DECFSZ     R12+0, 1
	GOTO       L__main46
	DECFSZ     R11+0, 1
	GOTO       L__main46
	NOP
;Propeller.mbas,101 :: 		for repet = 0 to 255
	CLRF       _repet+0
L__main48:
;Propeller.mbas,103 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main53:
;Propeller.mbas,104 :: 		portd = u [veces]   'Se visualiza la letra U "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _u+0
	MOVWF      R0+0
	MOVLW      hi_addr(_u+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,105 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main57:
	DECFSZ     R13+0, 1
	GOTO       L__main57
	DECFSZ     R12+0, 1
	GOTO       L__main57
	NOP
	NOP
;Propeller.mbas,106 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main56
	INCF       _veces+0, 1
	GOTO       L__main53
L__main56:
;Propeller.mbas,108 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,109 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main58:
	DECFSZ     R13+0, 1
	GOTO       L__main58
	DECFSZ     R12+0, 1
	GOTO       L__main58
	NOP
	NOP
;Propeller.mbas,111 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main60:
;Propeller.mbas,112 :: 		portd = ee [veces]   ''Se visualiza la letra E "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _ee+0
	MOVWF      R0+0
	MOVLW      hi_addr(_ee+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,113 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main64:
	DECFSZ     R13+0, 1
	GOTO       L__main64
	DECFSZ     R12+0, 1
	GOTO       L__main64
	NOP
	NOP
;Propeller.mbas,114 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main63
	INCF       _veces+0, 1
	GOTO       L__main60
L__main63:
;Propeller.mbas,116 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,117 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main65:
	DECFSZ     R13+0, 1
	GOTO       L__main65
	DECFSZ     R12+0, 1
	GOTO       L__main65
	NOP
	NOP
;Propeller.mbas,119 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main67:
;Propeller.mbas,120 :: 		portd = t [veces]    'Se visualiza la letra T "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _t+0
	MOVWF      R0+0
	MOVLW      hi_addr(_t+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,121 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main71:
	DECFSZ     R13+0, 1
	GOTO       L__main71
	DECFSZ     R12+0, 1
	GOTO       L__main71
	NOP
	NOP
;Propeller.mbas,122 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main70
	INCF       _veces+0, 1
	GOTO       L__main67
L__main70:
;Propeller.mbas,124 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,125 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main72:
	DECFSZ     R13+0, 1
	GOTO       L__main72
	DECFSZ     R12+0, 1
	GOTO       L__main72
	NOP
	NOP
;Propeller.mbas,127 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main74:
;Propeller.mbas,128 :: 		portd = ss [veces]   'Se visualiza la letra S "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _ss+0
	MOVWF      R0+0
	MOVLW      hi_addr(_ss+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,129 :: 		pause
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
;Propeller.mbas,130 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main77
	INCF       _veces+0, 1
	GOTO       L__main74
L__main77:
;Propeller.mbas,132 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,133 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main79:
	DECFSZ     R13+0, 1
	GOTO       L__main79
	DECFSZ     R12+0, 1
	GOTO       L__main79
;Propeller.mbas,135 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__main51
	INCF       _repet+0, 1
	GOTO       L__main48
L__main51:
;Propeller.mbas,137 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,138 :: 		pausec  'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main80:
	DECFSZ     R13+0, 1
	GOTO       L__main80
	DECFSZ     R12+0, 1
	GOTO       L__main80
	DECFSZ     R11+0, 1
	GOTO       L__main80
	NOP
;Propeller.mbas,145 :: 		for repet = 0 to 80
	CLRF       _repet+0
L__main82:
;Propeller.mbas,146 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main87:
;Propeller.mbas,147 :: 		portd = ff [veces] 'Se visualiza la letra F "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _ff+0
	MOVWF      R0+0
	MOVLW      hi_addr(_ff+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,148 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main91:
	DECFSZ     R13+0, 1
	GOTO       L__main91
	DECFSZ     R12+0, 1
	GOTO       L__main91
	NOP
	NOP
;Propeller.mbas,149 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main90
	INCF       _veces+0, 1
	GOTO       L__main87
L__main90:
;Propeller.mbas,151 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,152 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main92:
	DECFSZ     R13+0, 1
	GOTO       L__main92
	DECFSZ     R12+0, 1
	GOTO       L__main92
	NOP
	NOP
;Propeller.mbas,154 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main94:
;Propeller.mbas,155 :: 		portd = ee [veces]   'Se visualiza la letra E "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _ee+0
	MOVWF      R0+0
	MOVLW      hi_addr(_ee+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,156 :: 		pause
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
;Propeller.mbas,157 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main97
	INCF       _veces+0, 1
	GOTO       L__main94
L__main97:
;Propeller.mbas,159 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,160 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main99:
	DECFSZ     R13+0, 1
	GOTO       L__main99
	DECFSZ     R12+0, 1
	GOTO       L__main99
	NOP
	NOP
;Propeller.mbas,162 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main101:
;Propeller.mbas,163 :: 		portd = l [veces]    'Se visualiza la letra L "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _l+0
	MOVWF      R0+0
	MOVLW      hi_addr(_l+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,164 :: 		pause
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
;Propeller.mbas,165 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main104
	INCF       _veces+0, 1
	GOTO       L__main101
L__main104:
;Propeller.mbas,167 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,168 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main106:
	DECFSZ     R13+0, 1
	GOTO       L__main106
	DECFSZ     R12+0, 1
	GOTO       L__main106
	NOP
	NOP
;Propeller.mbas,170 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main108:
;Propeller.mbas,171 :: 		portd = i [veces]    'Se visualiza la letra I "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _i+0
	MOVWF      R0+0
	MOVLW      hi_addr(_i+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,172 :: 		pause
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
;Propeller.mbas,173 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main111
	INCF       _veces+0, 1
	GOTO       L__main108
L__main111:
;Propeller.mbas,175 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,176 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main113:
	DECFSZ     R13+0, 1
	GOTO       L__main113
	DECFSZ     R12+0, 1
	GOTO       L__main113
	NOP
	NOP
;Propeller.mbas,178 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main115:
;Propeller.mbas,179 :: 		portd = zz [veces]   'Se visualiza la letra Z "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _zz+0
	MOVWF      R0+0
	MOVLW      hi_addr(_zz+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,180 :: 		pause
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
;Propeller.mbas,181 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main118
	INCF       _veces+0, 1
	GOTO       L__main115
L__main118:
;Propeller.mbas,183 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,184 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main120:
	DECFSZ     R13+0, 1
	GOTO       L__main120
	DECFSZ     R12+0, 1
	GOTO       L__main120
;Propeller.mbas,186 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      80
	BTFSC      STATUS+0, 2
	GOTO       L__main85
	INCF       _repet+0, 1
	GOTO       L__main82
L__main85:
;Propeller.mbas,188 :: 		pausec    'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main121:
	DECFSZ     R13+0, 1
	GOTO       L__main121
	DECFSZ     R12+0, 1
	GOTO       L__main121
	DECFSZ     R11+0, 1
	GOTO       L__main121
	NOP
;Propeller.mbas,190 :: 		for repet = 0 to 80
	CLRF       _repet+0
L__main123:
;Propeller.mbas,191 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main128:
;Propeller.mbas,192 :: 		portd = a [veces]      'Se visualiza la letra A "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _a+0
	MOVWF      R0+0
	MOVLW      hi_addr(_a+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,193 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main132:
	DECFSZ     R13+0, 1
	GOTO       L__main132
	DECFSZ     R12+0, 1
	GOTO       L__main132
	NOP
	NOP
;Propeller.mbas,194 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main131
	INCF       _veces+0, 1
	GOTO       L__main128
L__main131:
;Propeller.mbas,196 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,197 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main133:
	DECFSZ     R13+0, 1
	GOTO       L__main133
	DECFSZ     R12+0, 1
	GOTO       L__main133
	NOP
	NOP
;Propeller.mbas,199 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main135:
;Propeller.mbas,200 :: 		portd = nn [veces]   'Se visualiza la letra N "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _nn+0
	MOVWF      R0+0
	MOVLW      hi_addr(_nn+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,201 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main139:
	DECFSZ     R13+0, 1
	GOTO       L__main139
	DECFSZ     R12+0, 1
	GOTO       L__main139
	NOP
	NOP
;Propeller.mbas,202 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main138
	INCF       _veces+0, 1
	GOTO       L__main135
L__main138:
;Propeller.mbas,204 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,205 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main140:
	DECFSZ     R13+0, 1
	GOTO       L__main140
	DECFSZ     R12+0, 1
	GOTO       L__main140
	NOP
	NOP
;Propeller.mbas,207 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main142:
;Propeller.mbas,208 :: 		portd = o [veces]    'Se visualiza la letra O "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _o+0
	MOVWF      R0+0
	MOVLW      hi_addr(_o+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,209 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main146:
	DECFSZ     R13+0, 1
	GOTO       L__main146
	DECFSZ     R12+0, 1
	GOTO       L__main146
	NOP
	NOP
;Propeller.mbas,210 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main145
	INCF       _veces+0, 1
	GOTO       L__main142
L__main145:
;Propeller.mbas,212 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,213 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main147:
	DECFSZ     R13+0, 1
	GOTO       L__main147
	DECFSZ     R12+0, 1
	GOTO       L__main147
;Propeller.mbas,215 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      80
	BTFSC      STATUS+0, 2
	GOTO       L__main126
	INCF       _repet+0, 1
	GOTO       L__main123
L__main126:
;Propeller.mbas,217 :: 		pausec    'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main148:
	DECFSZ     R13+0, 1
	GOTO       L__main148
	DECFSZ     R12+0, 1
	GOTO       L__main148
	DECFSZ     R11+0, 1
	GOTO       L__main148
	NOP
;Propeller.mbas,219 :: 		for repet = 0 to 80
	CLRF       _repet+0
L__main150:
;Propeller.mbas,220 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main155:
;Propeller.mbas,221 :: 		portd = n [veces]      'Se visualiza la letra N "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _n+0
	MOVWF      R0+0
	MOVLW      hi_addr(_n+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,222 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main159:
	DECFSZ     R13+0, 1
	GOTO       L__main159
	DECFSZ     R12+0, 1
	GOTO       L__main159
	NOP
	NOP
;Propeller.mbas,223 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main158
	INCF       _veces+0, 1
	GOTO       L__main155
L__main158:
;Propeller.mbas,225 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,226 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main160:
	DECFSZ     R13+0, 1
	GOTO       L__main160
	DECFSZ     R12+0, 1
	GOTO       L__main160
	NOP
	NOP
;Propeller.mbas,228 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main162:
;Propeller.mbas,229 :: 		portd = u [veces]    ''Se visualiza la letra U "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _u+0
	MOVWF      R0+0
	MOVLW      hi_addr(_u+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,230 :: 		pause
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
;Propeller.mbas,231 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main165
	INCF       _veces+0, 1
	GOTO       L__main162
L__main165:
;Propeller.mbas,233 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,234 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main167:
	DECFSZ     R13+0, 1
	GOTO       L__main167
	DECFSZ     R12+0, 1
	GOTO       L__main167
	NOP
	NOP
;Propeller.mbas,236 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main169:
;Propeller.mbas,237 :: 		portd = ee [veces]   ''Se visualiza la letra E "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _ee+0
	MOVWF      R0+0
	MOVLW      hi_addr(_ee+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,238 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main173:
	DECFSZ     R13+0, 1
	GOTO       L__main173
	DECFSZ     R12+0, 1
	GOTO       L__main173
	NOP
	NOP
;Propeller.mbas,239 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main172
	INCF       _veces+0, 1
	GOTO       L__main169
L__main172:
;Propeller.mbas,241 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,242 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main174:
	DECFSZ     R13+0, 1
	GOTO       L__main174
	DECFSZ     R12+0, 1
	GOTO       L__main174
	NOP
	NOP
;Propeller.mbas,244 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main176:
;Propeller.mbas,245 :: 		portd = v [veces]    'Se visualiza la letra V "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _v+0
	MOVWF      R0+0
	MOVLW      hi_addr(_v+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,246 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main180:
	DECFSZ     R13+0, 1
	GOTO       L__main180
	DECFSZ     R12+0, 1
	GOTO       L__main180
	NOP
	NOP
;Propeller.mbas,247 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main179
	INCF       _veces+0, 1
	GOTO       L__main176
L__main179:
;Propeller.mbas,249 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,250 :: 		pause1
	MOVLW      20
	MOVWF      R12+0
	MOVLW      121
	MOVWF      R13+0
L__main181:
	DECFSZ     R13+0, 1
	GOTO       L__main181
	DECFSZ     R12+0, 1
	GOTO       L__main181
	NOP
	NOP
;Propeller.mbas,252 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main183:
;Propeller.mbas,253 :: 		portd = o [veces]    'Se visualiza la letra O "[veces]" indica la posición de la letra (cada letra tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _o+0
	MOVWF      R0+0
	MOVLW      hi_addr(_o+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,254 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main187:
	DECFSZ     R13+0, 1
	GOTO       L__main187
	DECFSZ     R12+0, 1
	GOTO       L__main187
	NOP
	NOP
;Propeller.mbas,255 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main186
	INCF       _veces+0, 1
	GOTO       L__main183
L__main186:
;Propeller.mbas,257 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,258 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main188:
	DECFSZ     R13+0, 1
	GOTO       L__main188
	DECFSZ     R12+0, 1
	GOTO       L__main188
;Propeller.mbas,260 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      80
	BTFSC      STATUS+0, 2
	GOTO       L__main153
	INCF       _repet+0, 1
	GOTO       L__main150
L__main153:
;Propeller.mbas,262 :: 		pausec    'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main189:
	DECFSZ     R13+0, 1
	GOTO       L__main189
	DECFSZ     R12+0, 1
	GOTO       L__main189
	DECFSZ     R11+0, 1
	GOTO       L__main189
	NOP
;Propeller.mbas,266 :: 		portd = 0  'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,267 :: 		pausec  'Pause entre palabra y palabra
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main190:
	DECFSZ     R13+0, 1
	GOTO       L__main190
	DECFSZ     R12+0, 1
	GOTO       L__main190
	DECFSZ     R11+0, 1
	GOTO       L__main190
	NOP
;Propeller.mbas,270 :: 		for repet = 0 to 255
	CLRF       _repet+0
L__main192:
;Propeller.mbas,271 :: 		for veces = 0 to 4
	CLRF       _veces+0
L__main197:
;Propeller.mbas,272 :: 		portd = flecha[veces]  'Se visualiza la figura flecha, "[veces]" indica el posición del led a encender de la figura (tiene 5 posiciones)
	MOVF       _veces+0, 0
	ADDLW      _flecha+0
	MOVWF      R0+0
	MOVLW      hi_addr(_flecha+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTD+0
;Propeller.mbas,273 :: 		pause
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L__main201:
	DECFSZ     R13+0, 1
	GOTO       L__main201
	DECFSZ     R12+0, 1
	GOTO       L__main201
	NOP
	NOP
;Propeller.mbas,274 :: 		next veces
	MOVF       _veces+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L__main200
	INCF       _veces+0, 1
	GOTO       L__main197
L__main200:
;Propeller.mbas,275 :: 		portd = 0 'Se apagan leds
	CLRF       PORTD+0
;Propeller.mbas,276 :: 		pause15
	MOVLW      163
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L__main202:
	DECFSZ     R13+0, 1
	GOTO       L__main202
	DECFSZ     R12+0, 1
	GOTO       L__main202
;Propeller.mbas,277 :: 		next repet
	MOVF       _repet+0, 0
	XORLW      255
	BTFSC      STATUS+0, 2
	GOTO       L__main195
	INCF       _repet+0, 1
	GOTO       L__main192
L__main195:
;Propeller.mbas,278 :: 		portd = 0
	CLRF       PORTD+0
;Propeller.mbas,279 :: 		pausec
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L__main203:
	DECFSZ     R13+0, 1
	GOTO       L__main203
	DECFSZ     R12+0, 1
	GOTO       L__main203
	DECFSZ     R11+0, 1
	GOTO       L__main203
	NOP
;Propeller.mbas,280 :: 		wend
	GOTO       L__main2
L_end_main:
	GOTO       $+0
; end of _main
