
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "thermo.h"

// int thermo_update()
// {
//   temp_t temp;
//   if(set_temp_from_ports(&temp)!=0)
//   {
//     return 1;
//   }
//   return  set_display_from_temp(temp,&THERMO_DISPLAY_PORT);
//
// }


// int set_temp_from_ports(temp_t *temp)
// {
//   int temp_c = -500 + (THERMO_SENSOR_PORT+32)/64;  // To correct for rounding issues
//   if (temp_c > 500)
//   {
//     return 1;
//   }
//
//   if (THERMO_STATUS_PORT)         //checks for whether the user wants fahrenheit
//   {
//     temp->tenths_degrees = ((temp_c * 9) / 5 + 320);
//     temp->is_fahrenheit = 1;
//   }
//   else                          //is celsius
//   {
//     temp->tenths_degrees = temp_c;
//     temp->is_fahrenheit = 0;
//   }
//
//   return 0;
//
// }
// Uses the two global variables (ports) THERMO_SENSOR_PORT and
// THERMO_STATUS_PORT to set the temp structure. If THERMO_SENSOR_PORT
// is above its maximum trusted value, associated with +50.0 deg C,
// does not alter temp and returns 1.  Otherwise, sets fields of temp
// based on converting sensor value to degrees and checking whether
// Celsius or Fahrenheit display is in effect. Returns 0 on successful
// set. This function DOES NOT modify any global variables but may
// access global variables.
//
// CONSTRAINT: Uses only integer operations. No floating point
// operations are used as the target machine does not have a FPU.
// int set_display_from_temp(temp_t temp, int *display)
// {
//
//   if(temp.is_fahrenheit > 1 || temp.is_fahrenheit <0)     //Error checking portion
//   {
//     return 1;
//   }
//   if(temp.is_fahrenheit)
//   {
//     if(temp.tenths_degrees > 1220 || temp.tenths_degrees < -580) //Max and min for fahrenheit
//     {
//       return 1;
//     }
//   }
//   else
//   {
//     if(temp.tenths_degrees > 500 || temp.tenths_degrees < -500)   //Max and min for celsius
//     {
//       return 1;
//     }
//   }
//
//                  // 0         1         2         3         4         5         6         7         8         9
//   int mask[10] = {0b0111111,0b0000110,0b1011011,0b1001111,0b1100110,0b1101101,0b1111101,0b0000111,0b1111111,0b1101111};
//
//   int t;       //variable to keep track of temp to do math with
//   int is_neg = 0;               //checks whether the temp is positive or negative
//   if(temp.tenths_degrees<0)
//   {
//     is_neg = 1;
//     t = -temp.tenths_degrees;
//   }
//   else
//   {
//     t = temp.tenths_degrees;
//   }
//
//   int temp_hundreds = (t-t%1000)/1000;  //taking the modulo of each to figure out the value of their digit
//   t = t%1000;
//   int temp_tens = (t-t%100)/100;
//   t = t%100;
//   int temp_ones = (t-t%10)/10;
//   t = t%10;
//   int temp_tenths = t;
//
//   int temp_display = 0;              // Temporary variable to keep track of the bits, will = display
//   int leadingdigit = 0;              // makes sure that there is a leading 0 for the tens place
//                                      // I used assign then shift method, the C/F is at the end
//
//   if(is_neg)                    //Checks whether a negative sign is needed
//   {
//     temp_display = (temp_display | 0b1000000)<< 7;
//   }
//   if(temp_hundreds != 0)        //Checks if temp_hundreds is a non 0 value
//   {
//     temp_display = (temp_display | mask[temp_hundreds]) << 7;
//     leadingdigit = 1;
//   }
//   if(leadingdigit)       // If temp_hundreds wasn't 0, set tens place as is
//   {
//     temp_display = (temp_display | mask[temp_tens]) << 7;
//   }
//   else
//   {
//     if(temp_tens != 0)          // If temp_hundreds was 0, then only set tens place if it isnt 0
//     {
//       temp_display = (temp_display | mask[temp_tens]) << 7;
//       leadingdigit = 1;      // This line isnt necessary, but leading digit would become true here
//     }
//   }
//
//   temp_display = (temp_display | mask[temp_ones]) << 7;   // Ones place always set as is, no matter what
//   temp_display = (temp_display | mask[temp_tenths]);       // Tenths place does not require any shifting
//
//   if(temp.is_fahrenheit)    //Temperature unit symbol
//   {
//      temp_display = temp_display | (1 << 29);
//   }
//   else
//   {
//   temp_display = temp_display | (1 << 28);
//   }
//
//   *display = temp_display;
//
//   return 0;
//
// }
// Alters the bits of integer pointed to by display to reflect the
// temperature in struct arg temp.  If temp has a temperature value
// that is below minimum or above maximum temperature allowable or if
// an improper indication of celsius/fahrenheit is given, does nothing
// and returns 1. Otherwise, calculates each digit of the temperature
// and changes bits at display to show the temperature according to
// the pattern for each digit.  This function DOES NOT modify any
// global variables but may access global variables.
