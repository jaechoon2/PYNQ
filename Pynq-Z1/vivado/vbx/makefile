
PYNQ_ROOT = ../../..

VIVADO_PROJECT=$(shell basename `pwd`)

all: $(VIVADO_PROJECT).tcl
	rm -rf $(VIVADO_PROJECT)
	vivado -mode batch -source ../build.tcl

clean:
	rm -rf $(VIVADO_PROJECT) vivado* *.log
