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

#include "vbx.h"
#include "xparameters.h"
#include "xgpio.h"
//#include "vbx.h"
XGpio gpio_btn;
vbx_mxp_t the_mxp;

/*comm_buff is a pointer to the end of the block ram, the arm writes to this area to communicate
  with this microblaze slave
 */
volatile int* comm_buff=(volatile int*) (XPAR_IOP1_MB1_LMB_LMB_BRAM_IF_CNTLR_HIGHADDR+1 -4);


int filter(uint8_t* in_vid,uint8_t* out_vid,int rows, int cols,int pitch);

int main(void)
{
	uint8_t* in_video;
	uint8_t* out_video;
	int video_cols,video_rows,video_pitch;
	XGpio_Initialize(&gpio_btn,XPAR_BTNS_GPIO_DEVICE_ID);

	VectorBlox_MXP_Initialize(&the_mxp, XPAR_IOP1_VECTORBLOX_MXP_0_DEVICE_ID);

	int i=0;
	volatile int* command=comm_buff -1;



	while(1){
		//wait for command
		while(!*command );
        //DRAM is located at 0 in the host ARM, but at 0x20000000 in this uBlaze
		in_video=(uint8_t*)     (0x20000000+command[-1]);
		out_video=(uint8_t*)    (0x20000000+command[-2]);
		video_cols=command[-3];
		video_rows=command[-4];
		video_pitch=command[-5];
		int ret=filter(in_video,out_video,video_cols,video_rows,video_pitch);

		//respond to command
		command[-1] = ret;
		//clear command
		command[0]=0;
	}

	return(0);
}
