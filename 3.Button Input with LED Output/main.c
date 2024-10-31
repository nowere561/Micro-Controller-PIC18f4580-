#include <xc.h>
#define _XTAL_FREQ 8000000
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// Add other necessary configuration bits here
int leds[]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
int i=0;
void main(){
    //Gpio Config
    TRISD = 0x00;  //output
    TRISC = 0xFF;  //input

  
   
    while(1)    
    {
        
       if(PORTC==leds[i]){
        PORTD=leds[i];
        while(PORTC==leds[i]);
       }
       else{
        PORTD=0;
       }
       i++;
       if(i==8){
        i=0;
       }
    }
}