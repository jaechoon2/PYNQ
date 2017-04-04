#   Copyright (c) 2016, Xilinx, Inc.
#   All rights reserved.
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions are met:
#
#   1.  Redistributions of source code must retain the above copyright notice,
#       this list of conditions and the following disclaimer.
#
#   2.  Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#
#   3.  Neither the name of the copyright holder nor the names of its
#       contributors may be used to endorse or promote products derived from
#       this software without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
#   THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
#   PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
#   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
#   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#   OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#   OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#   ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

__author__      = "Joel Vandergriendt, Vancouver BC"
__copyright__   = "Copyright 2017, Vectorblox"
__email__       = "info@vectorblox.com"


import time,sys
from pynq import MMIO
from pynq.iop import request_iop
from pynq.iop import iop_const
from pynq.iop import PMODA
import subprocess,shutil

class MXP_Filter(object):
    """This class allows programming the mxp connected to IOP1
    """
    def __init__(self,pgm_str,bin_name="filter.bin"):
        if_id = PMODA
        self.bin_name=bin_name

        with open(iop_const.BIN_LOCATION + "/mxp-src/filter/src/filter.c","w") as filter_file:
            filter_file.write('#include "vbx.h"\n')
            #filter_file.write('#include "stdint.h"\n')
            filter_file.write(pgm_str)

        subprocess.check_call(['make','-C',iop_const.BIN_LOCATION + "/mxp-src/filter/Debug","filter.bin"])
        shutil.copyfile(iop_const.BIN_LOCATION + "/mxp-src/filter/Debug/filter.bin",iop_const.BIN_LOCATION+self.bin_name)

        self.iop = request_iop(PMODA,"filter.bin" )
        self.mmio = self.iop.mmio
        self.state=self.iop.state

    def start(self):
        self.iop.start()
    def stop(self):
        self.iop.stop()
    def __enter__(self):
        self.start()
    def __exit__(self):
        self.stop()

    def call(self,vid_in,vid_out,columns,rows,pitch):
        comm_buff_offset = self.mmio.length -8

        #set up arguments
        args=[vid_in,vid_out,columns,rows,pitch]
        for i,a in enumerate(args):
            offset=comm_buff_offset-4*(i+1)
            self.mmio.write(offset,a)
        #send command
        self.mmio.write(comm_buff_offset,1)

        #wait until done
        while (self.mmio.read(comm_buff_offset)):
            pass

        return self.mmio.read(comm_buff_offset-4)
