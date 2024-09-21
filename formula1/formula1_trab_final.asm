
_Pontadocarro:

;formula1_trab_final.c,19 :: 		void Pontadocarro(char pos_row, char pos_char) {
;formula1_trab_final.c,21 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,22 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF        Pontadocarro_i_L0+0 
L_Pontadocarro0:
	MOVF        Pontadocarro_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Pontadocarro1
	MOVLW       _character+0
	ADDWF       Pontadocarro_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Pontadocarro_i_L0+0, 1 
	GOTO        L_Pontadocarro0
L_Pontadocarro1:
;formula1_trab_final.c,23 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,24 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_Pontadocarro_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Pontadocarro_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,25 :: 		}
L_end_Pontadocarro:
	RETURN      0
; end of _Pontadocarro

_Espacocheio:

;formula1_trab_final.c,29 :: 		void Espacocheio(char pos_row, char pos_char) {
;formula1_trab_final.c,31 :: 		Lcd_Cmd(72);
	MOVLW       72
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,32 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF        Espacocheio_i_L0+0 
L_Espacocheio3:
	MOVF        Espacocheio_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Espacocheio4
	MOVLW       _character1+0
	ADDWF       Espacocheio_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character1+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character1+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Espacocheio_i_L0+0, 1 
	GOTO        L_Espacocheio3
L_Espacocheio4:
;formula1_trab_final.c,33 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,34 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF        FARG_Espacocheio_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Espacocheio_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,35 :: 		}
L_end_Espacocheio:
	RETURN      0
; end of _Espacocheio

_Rodadireita:

;formula1_trab_final.c,39 :: 		void Rodadireita(char pos_row, char pos_char) {
;formula1_trab_final.c,41 :: 		Lcd_Cmd(80);
	MOVLW       80
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,42 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF        Rodadireita_i_L0+0 
L_Rodadireita6:
	MOVF        Rodadireita_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Rodadireita7
	MOVLW       _character2+0
	ADDWF       Rodadireita_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character2+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character2+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Rodadireita_i_L0+0, 1 
	GOTO        L_Rodadireita6
L_Rodadireita7:
;formula1_trab_final.c,43 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,44 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF        FARG_Rodadireita_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Rodadireita_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,45 :: 		}
L_end_Rodadireita:
	RETURN      0
; end of _Rodadireita

_Rodaesquerda:

;formula1_trab_final.c,49 :: 		void Rodaesquerda(char pos_row, char pos_char) {
;formula1_trab_final.c,51 :: 		Lcd_Cmd(88);
	MOVLW       88
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,52 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF        Rodaesquerda_i_L0+0 
L_Rodaesquerda9:
	MOVF        Rodaesquerda_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Rodaesquerda10
	MOVLW       _character3+0
	ADDWF       Rodaesquerda_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character3+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character3+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Rodaesquerda_i_L0+0, 1 
	GOTO        L_Rodaesquerda9
L_Rodaesquerda10:
;formula1_trab_final.c,53 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,54 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF        FARG_Rodaesquerda_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Rodaesquerda_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,55 :: 		}
L_end_Rodaesquerda:
	RETURN      0
; end of _Rodaesquerda

_Traseiraesquerda:

;formula1_trab_final.c,59 :: 		void Traseiraesquerda(char pos_row, char pos_char) {
;formula1_trab_final.c,61 :: 		Lcd_Cmd(96);
	MOVLW       96
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,62 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
	CLRF        Traseiraesquerda_i_L0+0 
L_Traseiraesquerda12:
	MOVF        Traseiraesquerda_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Traseiraesquerda13
	MOVLW       _character4+0
	ADDWF       Traseiraesquerda_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character4+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character4+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Traseiraesquerda_i_L0+0, 1 
	GOTO        L_Traseiraesquerda12
L_Traseiraesquerda13:
;formula1_trab_final.c,63 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,64 :: 		Lcd_Chr(pos_row, pos_char, 4);
	MOVF        FARG_Traseiraesquerda_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Traseiraesquerda_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,65 :: 		}
L_end_Traseiraesquerda:
	RETURN      0
; end of _Traseiraesquerda

_Traseiradireita:

;formula1_trab_final.c,69 :: 		void Traseiradireita(char pos_row, char pos_char) {
;formula1_trab_final.c,71 :: 		Lcd_Cmd(104);
	MOVLW       104
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,72 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF        Traseiradireita_i_L0+0 
L_Traseiradireita15:
	MOVF        Traseiradireita_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Traseiradireita16
	MOVLW       _character5+0
	ADDWF       Traseiradireita_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character5+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character5+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Traseiradireita_i_L0+0, 1 
	GOTO        L_Traseiradireita15
L_Traseiradireita16:
;formula1_trab_final.c,73 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,74 :: 		Lcd_Chr(pos_row, pos_char, 5);
	MOVF        FARG_Traseiradireita_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Traseiradireita_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,75 :: 		}
L_end_Traseiradireita:
	RETURN      0
; end of _Traseiradireita

_Meiocheio2:

;formula1_trab_final.c,79 :: 		void Meiocheio2(char pos_row, char pos_char) {
;formula1_trab_final.c,81 :: 		Lcd_Cmd(112);
	MOVLW       112
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,82 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF        Meiocheio2_i_L0+0 
L_Meiocheio218:
	MOVF        Meiocheio2_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Meiocheio219
	MOVLW       _character6+0
	ADDWF       Meiocheio2_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character6+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character6+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Meiocheio2_i_L0+0, 1 
	GOTO        L_Meiocheio218
L_Meiocheio219:
;formula1_trab_final.c,83 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,84 :: 		Lcd_Chr(pos_row, pos_char, 6);
	MOVF        FARG_Meiocheio2_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Meiocheio2_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,85 :: 		}
L_end_Meiocheio2:
	RETURN      0
; end of _Meiocheio2

_Meiocheio:

;formula1_trab_final.c,89 :: 		void Meiocheio(char pos_row, char pos_char) {
;formula1_trab_final.c,91 :: 		Lcd_Cmd(120);
	MOVLW       120
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,92 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF        Meiocheio_i_L0+0 
L_Meiocheio21:
	MOVF        Meiocheio_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_Meiocheio22
	MOVLW       _character7+0
	ADDWF       Meiocheio_i_L0+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_character7+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_character7+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        Meiocheio_i_L0+0, 1 
	GOTO        L_Meiocheio21
L_Meiocheio22:
;formula1_trab_final.c,93 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,94 :: 		Lcd_Chr(pos_row, pos_char, 7);
	MOVF        FARG_Meiocheio_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_Meiocheio_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;formula1_trab_final.c,95 :: 		}
L_end_Meiocheio:
	RETURN      0
; end of _Meiocheio

_main:

;formula1_trab_final.c,97 :: 		void main() {
;formula1_trab_final.c,99 :: 		int pot1 = 0;
	CLRF        main_pot1_L0+0 
	CLRF        main_pot1_L0+1 
	CLRF        main_temp_L0+0 
	CLRF        main_temp_L0+1 
	CLRF        main_patual_L0+0 
	CLRF        main_patual_L0+1 
	CLRF        main_cresc_L0+0 
	CLRF        main_cresc_L0+1 
	CLRF        main_a_L0+0 
	CLRF        main_a_L0+1 
	CLRF        main_aux_L0+0 
	CLRF        main_aux_L0+1 
	CLRF        main_i_L0+0 
	CLRF        main_i_L0+1 
;formula1_trab_final.c,110 :: 		Lcd_init();
	CALL        _Lcd_Init+0, 0
;formula1_trab_final.c,111 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,112 :: 		TRISD = 0;
	CLRF        TRISD+0 
;formula1_trab_final.c,113 :: 		TRISC = 0;
	CLRF        TRISC+0 
;formula1_trab_final.c,114 :: 		TMR0L = 0xF7;
	MOVLW       247
	MOVWF       TMR0L+0 
;formula1_trab_final.c,115 :: 		TMR0H = 0xC2;
	MOVLW       194
	MOVWF       TMR0H+0 
;formula1_trab_final.c,116 :: 		T0CON = 0b10000110;
	MOVLW       134
	MOVWF       T0CON+0 
;formula1_trab_final.c,117 :: 		intcon.tmr0if = 0;
	BCF         INTCON+0, 2 
;formula1_trab_final.c,118 :: 		portd =0;
	CLRF        PORTD+0 
;formula1_trab_final.c,119 :: 		Pontadocarro(1,2);
	MOVLW       1
	MOVWF       FARG_Pontadocarro_pos_row+0 
	MOVLW       2
	MOVWF       FARG_Pontadocarro_pos_char+0 
	CALL        _Pontadocarro+0, 0
;formula1_trab_final.c,120 :: 		Meiocheio(1,6);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       6
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,121 :: 		Meiocheio(1,7);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       7
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,122 :: 		Meiocheio(1,8);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       8
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,123 :: 		Meiocheio(1,9);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       9
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,124 :: 		Meiocheio(1,10);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       10
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,125 :: 		Meiocheio(1,11);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       11
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,126 :: 		Meiocheio(1,12);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       12
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,127 :: 		Meiocheio(1,15);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       15
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,128 :: 		Meiocheio(1,16);
	MOVLW       1
	MOVWF       FARG_Meiocheio_pos_row+0 
	MOVLW       16
	MOVWF       FARG_Meiocheio_pos_char+0 
	CALL        _Meiocheio+0, 0
;formula1_trab_final.c,129 :: 		Rodaesquerda(2,1);
	MOVLW       2
	MOVWF       FARG_Rodaesquerda_pos_row+0 
	MOVLW       1
	MOVWF       FARG_Rodaesquerda_pos_char+0 
	CALL        _Rodaesquerda+0, 0
;formula1_trab_final.c,130 :: 		Espacocheio(2,2);
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,131 :: 		Rodadireita(2,3);
	MOVLW       2
	MOVWF       FARG_Rodadireita_pos_row+0 
	MOVLW       3
	MOVWF       FARG_Rodadireita_pos_char+0 
	CALL        _Rodadireita+0, 0
;formula1_trab_final.c,132 :: 		Espacocheio(2,5);
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       5
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,133 :: 		Espacocheio(2,6);
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       6
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,134 :: 		Meiocheio2(2,7);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       7
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,135 :: 		Meiocheio2(2,8);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       8
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,136 :: 		Meiocheio2(2,9);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       9
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,137 :: 		Meiocheio2(2,10);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       10
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,138 :: 		Meiocheio2(2,11);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       11
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,139 :: 		Meiocheio2(2,12);
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       12
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,140 :: 		Espacocheio(2,15);
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       15
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,141 :: 		Espacocheio(2,16);
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       16
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,142 :: 		Espacocheio(3,-2);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       254
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,143 :: 		Rodadireita(3,-1);
	MOVLW       3
	MOVWF       FARG_Rodadireita_pos_row+0 
	MOVLW       255
	MOVWF       FARG_Rodadireita_pos_char+0 
	CALL        _Rodadireita+0, 0
;formula1_trab_final.c,144 :: 		Rodaesquerda(3,-3);
	MOVLW       3
	MOVWF       FARG_Rodaesquerda_pos_row+0 
	MOVLW       253
	MOVWF       FARG_Rodaesquerda_pos_char+0 
	CALL        _Rodaesquerda+0, 0
;formula1_trab_final.c,145 :: 		Espacocheio(3,1);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       1
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,146 :: 		Espacocheio(3,2);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       2
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,147 :: 		Espacocheio(3,4);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       4
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,148 :: 		Espacocheio(3,5);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       5
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,149 :: 		Espacocheio(3,6);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       6
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,150 :: 		Espacocheio(3,7);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       7
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,151 :: 		Espacocheio(3,8);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       8
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,152 :: 		Espacocheio(3,11);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       11
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,153 :: 		Espacocheio(3,12);
	MOVLW       3
	MOVWF       FARG_Espacocheio_pos_row+0 
	MOVLW       12
	MOVWF       FARG_Espacocheio_pos_char+0 
	CALL        _Espacocheio+0, 0
;formula1_trab_final.c,154 :: 		Traseiraesquerda(4,-3);
	MOVLW       4
	MOVWF       FARG_Traseiraesquerda_pos_row+0 
	MOVLW       253
	MOVWF       FARG_Traseiraesquerda_pos_char+0 
	CALL        _Traseiraesquerda+0, 0
;formula1_trab_final.c,155 :: 		Meiocheio2(4,-2);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       254
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,156 :: 		Traseiradireita(4,-1);
	MOVLW       4
	MOVWF       FARG_Traseiradireita_pos_row+0 
	MOVLW       255
	MOVWF       FARG_Traseiradireita_pos_char+0 
	CALL        _Traseiradireita+0, 0
;formula1_trab_final.c,157 :: 		Meiocheio2(4,1);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       1
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,158 :: 		Meiocheio2(4,2);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       2
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,159 :: 		Meiocheio2(4,4);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,160 :: 		Meiocheio2(4,5);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       5
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,161 :: 		Meiocheio2(4,11);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       11
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,162 :: 		Meiocheio2(4,12);
	MOVLW       4
	MOVWF       FARG_Meiocheio2_pos_row+0 
	MOVLW       12
	MOVWF       FARG_Meiocheio2_pos_char+0 
	CALL        _Meiocheio2+0, 0
;formula1_trab_final.c,165 :: 		while(1){
L_main24:
;formula1_trab_final.c,166 :: 		if (intcon.tmr0if == 1){
	BTFSS       INTCON+0, 2 
	GOTO        L_main26
;formula1_trab_final.c,167 :: 		TMR0L = 0xF7;
	MOVLW       247
	MOVWF       TMR0L+0 
;formula1_trab_final.c,168 :: 		TMR0H = 0xC2;
	MOVLW       194
	MOVWF       TMR0H+0 
;formula1_trab_final.c,169 :: 		intcon.tmr0if = 0;
	BCF         INTCON+0, 2 
;formula1_trab_final.c,170 :: 		aux = aux+1;
	INFSNZ      main_aux_L0+0, 1 
	INCF        main_aux_L0+1, 1 
;formula1_trab_final.c,171 :: 		if(aux==5){
	MOVLW       0
	XORWF       main_aux_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main64
	MOVLW       5
	XORWF       main_aux_L0+0, 0 
L__main64:
	BTFSS       STATUS+0, 2 
	GOTO        L_main27
;formula1_trab_final.c,172 :: 		Lcd_cmd(_LCD_Clear);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,173 :: 		}
L_main27:
;formula1_trab_final.c,174 :: 		}
L_main26:
;formula1_trab_final.c,175 :: 		if (button(&PORTB,0,1,0)){
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main28
;formula1_trab_final.c,176 :: 		i++;
	INFSNZ      main_i_L0+0, 1 
	INCF        main_i_L0+1, 1 
;formula1_trab_final.c,177 :: 		while(cresc <= 255){
L_main29:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_cresc_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main65
	MOVF        main_cresc_L0+0, 0 
	SUBLW       255
L__main65:
	BTFSS       STATUS+0, 0 
	GOTO        L_main30
;formula1_trab_final.c,178 :: 		PORTD = cresc;
	MOVF        main_cresc_L0+0, 0 
	MOVWF       PORTD+0 
;formula1_trab_final.c,179 :: 		cresc = (cresc * 2) + 1;
	RLCF        main_cresc_L0+0, 1 
	BCF         main_cresc_L0+0, 0 
	RLCF        main_cresc_L0+1, 1 
	INFSNZ      main_cresc_L0+0, 1 
	INCF        main_cresc_L0+1, 1 
;formula1_trab_final.c,180 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main31:
	DECFSZ      R13, 1, 1
	BRA         L_main31
	DECFSZ      R12, 1, 1
	BRA         L_main31
	DECFSZ      R11, 1, 1
	BRA         L_main31
	NOP
	NOP
;formula1_trab_final.c,181 :: 		}
	GOTO        L_main29
L_main30:
;formula1_trab_final.c,182 :: 		while(i==1){
L_main32:
	MOVLW       0
	XORWF       main_i_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main66
	MOVLW       1
	XORWF       main_i_L0+0, 0 
L__main66:
	BTFSS       STATUS+0, 2 
	GOTO        L_main33
;formula1_trab_final.c,183 :: 		trisb=0;
	CLRF        TRISB+0 
;formula1_trab_final.c,184 :: 		trisa = 0;
	CLRF        TRISA+0 
;formula1_trab_final.c,185 :: 		porta = 0;
	CLRF        PORTA+0 
;formula1_trab_final.c,186 :: 		trisa=255;
	MOVLW       255
	MOVWF       TRISA+0 
;formula1_trab_final.c,187 :: 		TRISD = 0;
	CLRF        TRISD+0 
;formula1_trab_final.c,188 :: 		TRISC = 0;
	CLRF        TRISC+0 
;formula1_trab_final.c,189 :: 		ADCON1 =  0b00001100;
	MOVLW       12
	MOVWF       ADCON1+0 
;formula1_trab_final.c,190 :: 		pot1 = adc_read(0)/10.23;
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	CALL        _word2double+0, 0
	MOVLW       20
	MOVWF       R4 
	MOVLW       174
	MOVWF       R5 
	MOVLW       35
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       main_pot1_L0+0 
	MOVF        R1, 0 
	MOVWF       main_pot1_L0+1 
;formula1_trab_final.c,191 :: 		if(pot1 != patual){
	MOVF        R1, 0 
	XORWF       main_patual_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main67
	MOVF        main_patual_L0+0, 0 
	XORWF       R0, 0 
L__main67:
	BTFSC       STATUS+0, 2 
	GOTO        L_main34
;formula1_trab_final.c,192 :: 		Lcd_Out(1,1,"Piloto: Nicolas");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_formula1_trab_final+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_formula1_trab_final+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,193 :: 		lcd_out(2,1,"Velocidade:");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_formula1_trab_final+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_formula1_trab_final+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,194 :: 		WordToStr(pot1, texto);
	MOVF        main_pot1_L0+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        main_pot1_L0+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       main_texto_L0+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(main_texto_L0+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;formula1_trab_final.c,195 :: 		lcd_out(2,10,texto);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       main_texto_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(main_texto_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,196 :: 		Lcd_Out_Cp("%");
	MOVLW       ?lstr3_formula1_trab_final+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr3_formula1_trab_final+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;formula1_trab_final.c,197 :: 		lcd_out(3,-3,"Temperatura:");
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       253
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_formula1_trab_final+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_formula1_trab_final+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,198 :: 		temp = adc_read(2)/2;
	MOVLW       2
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       R3 
	RRCF        R3, 1 
	RRCF        R2, 1 
	BCF         R3, 7 
	MOVF        R2, 0 
	MOVWF       main_temp_L0+0 
	MOVF        R3, 0 
	MOVWF       main_temp_L0+1 
;formula1_trab_final.c,199 :: 		WordToStr(temp, texto2);
	MOVF        R2, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        R3, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       main_texto2_L0+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(main_texto2_L0+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;formula1_trab_final.c,200 :: 		lcd_out(3,7,texto2);
	MOVLW       3
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       main_texto2_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(main_texto2_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,201 :: 		if(pot1>=70){
	MOVLW       128
	XORWF       main_pot1_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main68
	MOVLW       70
	SUBWF       main_pot1_L0+0, 0 
L__main68:
	BTFSS       STATUS+0, 0 
	GOTO        L_main35
;formula1_trab_final.c,202 :: 		PORTC = 0b00100000;
	MOVLW       32
	MOVWF       PORTC+0 
;formula1_trab_final.c,203 :: 		if(pot1==100){
	MOVLW       0
	XORWF       main_pot1_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main69
	MOVLW       100
	XORWF       main_pot1_L0+0, 0 
L__main69:
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
;formula1_trab_final.c,204 :: 		PORTC = 0b00100110;
	MOVLW       38
	MOVWF       PORTC+0 
;formula1_trab_final.c,205 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main37:
	DECFSZ      R13, 1, 1
	BRA         L_main37
	DECFSZ      R12, 1, 1
	BRA         L_main37
	DECFSZ      R11, 1, 1
	BRA         L_main37
	NOP
	NOP
;formula1_trab_final.c,206 :: 		PORTC = 0;
	CLRF        PORTC+0 
;formula1_trab_final.c,207 :: 		}
L_main36:
;formula1_trab_final.c,208 :: 		}
	GOTO        L_main38
L_main35:
;formula1_trab_final.c,210 :: 		PORTC.f5 = 0;
	BCF         PORTC+0, 5 
;formula1_trab_final.c,211 :: 		}
L_main38:
;formula1_trab_final.c,213 :: 		if(temp >= 35){
	MOVLW       128
	XORWF       main_temp_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main70
	MOVLW       35
	SUBWF       main_temp_L0+0, 0 
L__main70:
	BTFSS       STATUS+0, 0 
	GOTO        L_main39
;formula1_trab_final.c,214 :: 		PORTC.f2 = 1;
	BSF         PORTC+0, 2 
;formula1_trab_final.c,215 :: 		}else{
	GOTO        L_main40
L_main39:
;formula1_trab_final.c,216 :: 		PORTC.f2 = 0;
	BCF         PORTC+0, 2 
;formula1_trab_final.c,217 :: 		}
L_main40:
;formula1_trab_final.c,218 :: 		}
L_main34:
;formula1_trab_final.c,219 :: 		}
	GOTO        L_main32
L_main33:
;formula1_trab_final.c,220 :: 		}
L_main28:
;formula1_trab_final.c,221 :: 		if (button(&PORTB,1,1,0)){
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main41
;formula1_trab_final.c,222 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;formula1_trab_final.c,223 :: 		Lcd_Out(1,3,"Volta atual");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_formula1_trab_final+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_formula1_trab_final+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;formula1_trab_final.c,224 :: 		TRISB = 255;
	MOVLW       255
	MOVWF       TRISB+0 
;formula1_trab_final.c,225 :: 		TRISA = 0;
	CLRF        TRISA+0 
;formula1_trab_final.c,226 :: 		TRISD = 0;
	CLRF        TRISD+0 
;formula1_trab_final.c,227 :: 		PORTA = 0b00100000;
	MOVLW       32
	MOVWF       PORTA+0 
;formula1_trab_final.c,228 :: 		a = a + 1;
	INFSNZ      main_a_L0+0, 1 
	INCF        main_a_L0+1, 1 
;formula1_trab_final.c,229 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main42:
	DECFSZ      R13, 1, 1
	BRA         L_main42
	DECFSZ      R12, 1, 1
	BRA         L_main42
	DECFSZ      R11, 1, 1
	BRA         L_main42
	NOP
;formula1_trab_final.c,230 :: 		}
L_main41:
;formula1_trab_final.c,231 :: 		if(a==1){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main71
	MOVLW       1
	XORWF       main_a_L0+0, 0 
L__main71:
	BTFSS       STATUS+0, 2 
	GOTO        L_main43
;formula1_trab_final.c,232 :: 		PORTD=0x3F;
	MOVLW       63
	MOVWF       PORTD+0 
;formula1_trab_final.c,233 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main44:
	DECFSZ      R13, 1, 1
	BRA         L_main44
	DECFSZ      R12, 1, 1
	BRA         L_main44
	DECFSZ      R11, 1, 1
	BRA         L_main44
	NOP
;formula1_trab_final.c,234 :: 		}
L_main43:
;formula1_trab_final.c,235 :: 		if(a==2){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main72
	MOVLW       2
	XORWF       main_a_L0+0, 0 
L__main72:
	BTFSS       STATUS+0, 2 
	GOTO        L_main45
;formula1_trab_final.c,236 :: 		PORTD=0x06;
	MOVLW       6
	MOVWF       PORTD+0 
;formula1_trab_final.c,237 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main46:
	DECFSZ      R13, 1, 1
	BRA         L_main46
	DECFSZ      R12, 1, 1
	BRA         L_main46
	DECFSZ      R11, 1, 1
	BRA         L_main46
	NOP
;formula1_trab_final.c,238 :: 		}
L_main45:
;formula1_trab_final.c,239 :: 		if(a==3){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main73
	MOVLW       3
	XORWF       main_a_L0+0, 0 
L__main73:
	BTFSS       STATUS+0, 2 
	GOTO        L_main47
;formula1_trab_final.c,240 :: 		PORTD=0x5b;
	MOVLW       91
	MOVWF       PORTD+0 
;formula1_trab_final.c,241 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main48:
	DECFSZ      R13, 1, 1
	BRA         L_main48
	DECFSZ      R12, 1, 1
	BRA         L_main48
	DECFSZ      R11, 1, 1
	BRA         L_main48
	NOP
;formula1_trab_final.c,242 :: 		}
L_main47:
;formula1_trab_final.c,243 :: 		if(a==4){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main74
	MOVLW       4
	XORWF       main_a_L0+0, 0 
L__main74:
	BTFSS       STATUS+0, 2 
	GOTO        L_main49
;formula1_trab_final.c,244 :: 		PORTD=0x4f;
	MOVLW       79
	MOVWF       PORTD+0 
;formula1_trab_final.c,245 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main50:
	DECFSZ      R13, 1, 1
	BRA         L_main50
	DECFSZ      R12, 1, 1
	BRA         L_main50
	DECFSZ      R11, 1, 1
	BRA         L_main50
	NOP
;formula1_trab_final.c,246 :: 		}
L_main49:
;formula1_trab_final.c,247 :: 		if(a==5){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main75
	MOVLW       5
	XORWF       main_a_L0+0, 0 
L__main75:
	BTFSS       STATUS+0, 2 
	GOTO        L_main51
;formula1_trab_final.c,248 :: 		PORTD=0x66;
	MOVLW       102
	MOVWF       PORTD+0 
;formula1_trab_final.c,249 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main52:
	DECFSZ      R13, 1, 1
	BRA         L_main52
	DECFSZ      R12, 1, 1
	BRA         L_main52
	DECFSZ      R11, 1, 1
	BRA         L_main52
	NOP
;formula1_trab_final.c,250 :: 		}
L_main51:
;formula1_trab_final.c,251 :: 		if(a==6){
	MOVLW       0
	XORWF       main_a_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main76
	MOVLW       6
	XORWF       main_a_L0+0, 0 
L__main76:
	BTFSS       STATUS+0, 2 
	GOTO        L_main53
;formula1_trab_final.c,252 :: 		PORTD=0x6D;
	MOVLW       109
	MOVWF       PORTD+0 
;formula1_trab_final.c,253 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main54:
	DECFSZ      R13, 1, 1
	BRA         L_main54
	DECFSZ      R12, 1, 1
	BRA         L_main54
	DECFSZ      R11, 1, 1
	BRA         L_main54
	NOP
;formula1_trab_final.c,254 :: 		a=0;
	CLRF        main_a_L0+0 
	CLRF        main_a_L0+1 
;formula1_trab_final.c,255 :: 		}
L_main53:
;formula1_trab_final.c,257 :: 		}
	GOTO        L_main24
;formula1_trab_final.c,258 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
