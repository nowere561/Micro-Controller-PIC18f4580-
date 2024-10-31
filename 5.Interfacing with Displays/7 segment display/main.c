#include <xc.h>
#define _XTAL_FREQ 8000000
// CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// Add other necessary configuration bits here
int seven_segment[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
int i=0;
int j=0;
void main(){
    //Gpio Config
    TRISC = 0x00;  //output
    TRISD = 0x00;
   

  
   
    while(1)    
    {

        for(i=0;i<100;i++){
            PORTC=seven_segment[i/10];
            for(j=0;j<100;j++){
                PORTD=seven_segment[i%10];
                __delay_ms(5);
            }


        }
        
       
        
       


      

    }
}