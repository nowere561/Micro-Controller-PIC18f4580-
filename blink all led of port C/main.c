#include <xc.h>
#define _XTAL_FREQ 8000000
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// Add other necessary configuration bits here

void main(){
    //Gpio Config
    TRISC = 0x00;

  
   
    while(1)    
    {
        
        PORTC=0xFF;
        __delay_ms(1000);
        PORTC=0x00;
        __delay_ms(1000);
        


    }
}