#line 1 "C:/Users/nicol/OneDrive/Documentos/FaculdadeBambui/7º periodo/Microcontroladores/trabalho_final/formula1/formula1_trab_final.c"

sbit LCD_RS at RE2_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;


sbit LCD_RS_Direction at TRISE2_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

const char character[] = {0,0,0,0,0,4,14,31};

void Pontadocarro(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

const char character1[] = {31,31,31,31,31,31,31,31};

void Espacocheio(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}

const char character2[] = {0,0,24,24,24,24,0,0};

void Rodadireita(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(80);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}

const char character3[] = {0,0,3,3,3,3,0,0};

void Rodaesquerda(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}

const char character4[] = {15,7,3,1,0,0,0,0};

void Traseiraesquerda(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(96);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 4);
}

const char character5[] = {30,28,24,16,0,0,0,0};

void Traseiradireita(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(104);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 5);
}

const char character6[] = {31,31,31,31,0,0,0,0};

void Meiocheio2(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(112);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 6);
}

const char character7[] = {0,0,0,31,31,31,31,31};

void Meiocheio(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(120);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 7);
}

void main() {

int pot1 = 0;
int temp = 0;
int patual = 0;
int cresc = 0;
int a = 0;
int aux = 0;
int b = 0;
int i = 0;
char texto[6];
char texto2[6];

Lcd_init();
Lcd_Cmd(_LCD_CURSOR_OFF);
TRISD = 0;
TRISC = 0;
TMR0L = 0xF7;
TMR0H = 0xC2;
T0CON = 0b10000110;
intcon.tmr0if = 0;
portd =0;
Pontadocarro(1,2);
Meiocheio(1,6);
Meiocheio(1,7);
Meiocheio(1,8);
Meiocheio(1,9);
Meiocheio(1,10);
Meiocheio(1,11);
Meiocheio(1,12);
Meiocheio(1,15);
Meiocheio(1,16);
Rodaesquerda(2,1);
Espacocheio(2,2);
Rodadireita(2,3);
Espacocheio(2,5);
Espacocheio(2,6);
Meiocheio2(2,7);
Meiocheio2(2,8);
Meiocheio2(2,9);
Meiocheio2(2,10);
Meiocheio2(2,11);
Meiocheio2(2,12);
Espacocheio(2,15);
Espacocheio(2,16);
Espacocheio(3,-2);
Rodadireita(3,-1);
Rodaesquerda(3,-3);
Espacocheio(3,1);
Espacocheio(3,2);
Espacocheio(3,4);
Espacocheio(3,5);
Espacocheio(3,6);
Espacocheio(3,7);
Espacocheio(3,8);
Espacocheio(3,11);
Espacocheio(3,12);
Traseiraesquerda(4,-3);
Meiocheio2(4,-2);
Traseiradireita(4,-1);
Meiocheio2(4,1);
Meiocheio2(4,2);
Meiocheio2(4,4);
Meiocheio2(4,5);
Meiocheio2(4,11);
Meiocheio2(4,12);


 while(1){
 if (intcon.tmr0if == 1){
 TMR0L = 0xF7;
 TMR0H = 0xC2;
 intcon.tmr0if = 0;
 aux = aux+1;
 if(aux==5){
 Lcd_cmd(_LCD_Clear);
 }
}
 if (button(&PORTB,0,1,0)){
 i++;
 while(cresc <= 255){
 PORTD = cresc;
 cresc = (cresc * 2) + 1;
 delay_ms(500);
 }
 while(i==1){
 trisb=0;
 trisa = 0;
 porta = 0;
 trisa=255;
 TRISD = 0;
 TRISC = 0;
 ADCON1 = 0b00001100;
 pot1 = adc_read(0)/10.23;
 if(pot1 != patual){
 Lcd_Out(1,1,"Piloto: Nicolas");
 lcd_out(2,1,"Velocidade:");
 WordToStr(pot1, texto);
 lcd_out(2,10,texto);
 Lcd_Out_Cp("%");
 lcd_out(3,-3,"Temperatura:");
 temp = adc_read(2)/2;
 WordToStr(temp, texto2);
 lcd_out(3,7,texto2);
 if(pot1>=70){
 PORTC = 0b00100000;
 if(pot1==100){
 PORTC = 0b00100110;
 delay_ms(1000);
 PORTC = 0;
 }
 }
 else{
 PORTC.f5 = 0;
 }

 if(temp >= 35){
 PORTC.f2 = 1;
 }else{
 PORTC.f2 = 0;
 }
 }
 }
 }
 if (button(&PORTB,1,1,0)){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,3,"Volta atual");
 TRISB = 255;
 TRISA = 0;
 TRISD = 0;
 PORTA = 0b00100000;
 a = a + 1;
 delay_ms(100);
 }
 if(a==1){
 PORTD=0x3F;
 delay_ms(100);
 }
 if(a==2){
 PORTD=0x06;
 delay_ms(100);
 }
 if(a==3){
 PORTD=0x5b;
 delay_ms(100);
 }
 if(a==4){
 PORTD=0x4f;
 delay_ms(100);
 }
 if(a==5){
 PORTD=0x66;
 delay_ms(100);
 }
 if(a==6){
 PORTD=0x6D;
 delay_ms(100);
 a=0;
 }

}
}
