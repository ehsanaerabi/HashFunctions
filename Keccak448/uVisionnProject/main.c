/* Copyright (c) 2014 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */

/** @file
 *
 * @defgroup blinky_example_main main.c
 * @{
 * @ingroup blinky_example
 * @brief Blinky Example Application main file.
 *
 */


#include "nrf_delay.h"
#include "nrf_gpio.h"
#include "boards.h"
#define LEDS_NUMBER    5

#define LED_START      18
#define LED_1          18
#define LED_2          19
#define LED_3          20
#define LED_4          21
#define LED_5          22
#define LED_STOP       22

#define LEDS_LIST { LED_1, LED_2, LED_3, LED_4 , LED_5}

#define BSP_LED_0      LED_1
#define BSP_LED_1      LED_2
#define BSP_LED_2      LED_3
#define BSP_LED_3      LED_4
#define BSP_LED_4      LED_5

#define BSP_LED_0_MASK (1<<BSP_LED_0)
#define BSP_LED_1_MASK (1<<BSP_LED_1)
#define BSP_LED_2_MASK (1<<BSP_LED_2)
#define BSP_LED_3_MASK (1<<BSP_LED_3)
#define BSP_LED_4_MASK (1<<BSP_LED_4)

#define LEDS_MASK      (BSP_LED_0_MASK | BSP_LED_1_MASK | BSP_LED_2_MASK | BSP_LED_3_MASK	| BSP_LED_4_MASK)

const uint8_t leds_list[LEDS_NUMBER] = LEDS_LIST;

/**
 * @brief Function for application main entry.
 */

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "KeccakSponge.h"

#define digestLength 448
int crypto_hash(unsigned char *out, const unsigned char *in, unsigned long long inlen)
{
    spongeState state;
    InitSponge(&state, 1152, digestLength);
    Absorb(&state, in, inlen*8);
    Squeeze(&state, out, digestLength*8);
    return 0;
}


/**********************************************************************/

    
int main(void)
{ 
		// Configure LED-pins as outputs. 
    LEDS_CONFIGURE(LEDS_MASK);
    // Toggle LEDs.
		
		////////
	
			unsigned char buf[1024];
			 unsigned char hash[digestLength];
			int i;

 
			for( i = 0; i < 1024; ++i )
				buf[i] = ( unsigned char )i;
	
		
			while (true)
			{
				LEDS_INVERT(1<<leds_list[1]);	 		
				
				///////////////////////////////
				
				
				
				crypto_hash(hash, buf, 1024) ;
				
				//////////////////////////////
				LEDS_INVERT(1<<leds_list[1]);
				nrf_delay_ms(10);

			}
}


/** @} */
