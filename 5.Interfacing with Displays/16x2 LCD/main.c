#include <xc.h>
#define _XTAL_FREQ 8000000
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

#define rs LATAbits.LATA0
#define rw LATAbits.LATA1
#define en LATAbits.LATA2
//LCD Data pins
#define lcdport LATB

void lcd_cmd(unsigned char cmdout){
    lcdport=cmdout;
    rs =0;
    rw=0;
    en=1;
    __delay_ms(10);
    en=0;
}



void lcd_data(unsigned char data){
    lcdport=data;
    rs =1;
    rw=0;
    en=1;
    __delay_ms(10);
    en=0;
}

void lcd_init(){
    lcd_cmd(0x01);
    lcd_cmd(0x38);
    lcd_cmd(0x0C);
    lcd_cmd(0x80);
    lcd_cmd(0x06);

}


int i=0;
char st[]="hello world";
void main(){
    TRISB=0x00;
    TRISA=0x00;

    lcd_init();
    lcd_cmd(0x01);


    for(i=0;st[i]!='\0';i++){
        lcd_data(st[i]);
    }
    
}


