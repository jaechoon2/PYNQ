all:
PYNQ_ROOT = ../../..

VIVADO_PROJECT=$(shell basename `pwd`)

MXP_GIT=mxp/.git

$(MXP_GIT):
	git clone https://github.com/VectorBlox/mxp.git
	(cd mxp && git checkout 09859bd )

all: $(VIVADO_PROJECT).tcl $(MXP_GIT)
	rm -rf $(VIVADO_PROJECT)
	vivado -mode batch -source ../build.tcl

clean:
	rm -rf $(VIVADO_PROJECT) vivado* *.log
