#include <avr/io.h>
#include<util/delay.h>
#define led_pin PD2
#define led_pin1 PD5
#define led_pin2 PD7

int main (void){
  DDRD |= (1 << led_pin);
  DDRD |= (1 << led_pin1);
  DDRD |= (1 << led_pin2); 
  
  PORTD |= (1 << led_pin); 
  _delay_ms(500);
  PORTD |= ~(1<< led_pin);
  PORTD &= (1<< led_pin1);

while(1){
PORTD ^=(1<<led_pin2);
_delay_ms(500);
PORTD ^= (1<<led_pin2);
_delay_ms(500);
}
}
