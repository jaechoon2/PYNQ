/******************************************************************************
 *  Copyright (c) 2016, Xilinx, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 *  1.  Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *
 *  2.  Redistributions in binary form must reproduce the above copyright
 *      notice, this list of conditions and the following disclaimer in the
 *      documentation and/or other materials provided with the distribution.
 *
 *  3.  Neither the name of the copyright holder nor the names of its
 *      contributors may be used to endorse or promote products derived from
 *      this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 *  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 *  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 *  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 *  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 *  OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 *  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 *  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 *  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *****************************************************************************/
/******************************************************************************
 *
 *
 * @file pmod_als.c
 *
 * IOP code (MicroBlaze) for Pmod ALS
 * Pmod ALS is read only, and has SPI with MISO only (no MOSI)
 * Operations implemented in this application:
 *   1. Simple, single read from sensor, and write to data area
 *   2. Continuous read from sensor and log to data area
 * Switch configuration is done within this program, Pmod should
 * be plugged into upper row of connector.
 * The Pmod ALS is based on ADC081S021 analog-to-digital converter and
 * Vishay Semiconductor's TEMT6000X01.
 * http://store.digilentinc.com/pmodals-ambient-light-sensor/
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- --- ------- -----------------------------------------------
 * 1.00a cmc  03/29/16 release
 * 1.00b pp  05/27/16 fix pmod_init()
 *
 * </pre>
 *
 *****************************************************************************/

#include "pmod.h"
#include "vbx.h"
// MAILBOX_WRITE_CMD
#define READ_SINGLE_VALUE 0x3
#define READ_AND_LOG      0x7
// Log constants
#define LOG_BASE_ADDRESS (MAILBOX_DATA_PTR(4))
#define LOG_ITEM_SIZE sizeof(u32)
#define LOG_CAPACITY  (4000/LOG_ITEM_SIZE)


static inline u32 get_sample(){
	/*
	 * ALS data is 8-bit in the middle of 16-bit stream.
	 * Two bytes need to be read, and data extracted.
	 */
	static u32  data=0;
	return data++;
}
#include "xparameters.h"
#include "xgpio.h"
//#include "vbx.h"
XGpio gpio_rgbled;
XGpio gpio_led;
XGpio gpio_btn;

void read_value(){
	vbx_sp_push();

	int val;
	int vlen=10;
	vbx_word_t* va=(vbx_word_t*)vbx_sp_malloc(vlen*sizeof(vbx_word_t));
	vbx_set_vl(vlen);
	vbx(SEW,VADD,va,0,0);
	// write out reading, reset mailbox
	val=get_sample();
	//val=XGpio_DiscreteRead(&gpio_btn,1);
	XGpio_DiscreteWrite(&gpio_rgbled,1,val);
	//MAILBOX_DATA(0) = va[val];//vbx_sp_malloc(10);
	//MAILBOX_CMD_ADDR = 0x0;
	vbx_sp_pop();
}
vbx_mxp_t the_mxp;
void draw_video(char* frame_pointer){
  int pix;
  int first_pixel=1920*3*40;
  for(pix=0;pix<1920*3*15;pix++){
	 frame_pointer[pix+first_pixel]=127;
  }

}

void stdout_putchar(void* p,int c){
  //wait until the host has consumed the last char
  while( ((&MAILBOX_CMD_ADDR)[-1] & 0x80000000) );
  //send next char
  (&MAILBOX_CMD_ADDR)[-1] = (0x80000000 | c);
}
int main(void)
{
	int cmd;

	XGpio_Initialize(&gpio_rgbled,XPAR_RGBLEDS_GPIO_DEVICE_ID);
	XGpio_Initialize(&gpio_led,XPAR_SWSLEDS_GPIO_DEVICE_ID);
	XGpio_Initialize(&gpio_btn,XPAR_BTNS_GPIO_DEVICE_ID);

	VectorBlox_MXP_Initialize(&the_mxp, XPAR_IOP1_VECTORBLOX_MXP_0_DEVICE_ID);
	stdout_putchar(0,0);
	while(1){
		stdout_putchar(0,'h');
		stdout_putchar(0,'e');
		stdout_putchar(0,'l');
		stdout_putchar(0,'l');
		stdout_putchar(0,'o');
		stdout_putchar(0,'\n');
	}
	while(1){

		// wait and store valid command
		while((MAILBOX_CMD_ADDR & 0x01)==0);
		cmd = MAILBOX_CMD_ADDR;
		switch(cmd){

		case READ_SINGLE_VALUE:
		  draw_video((char*)(MAILBOX_DATA(0) + 0x20000000));

		  MAILBOX_DATA(0) = (MAILBOX_DATA(0) + 0x20000000);
		  MAILBOX_CMD_ADDR = 0x1;
			break;
		default:
			// reset command
			MAILBOX_CMD_ADDR = 0x0;
			break;
		}
	}
	return(0);
}
