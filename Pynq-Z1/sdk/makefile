# Makefile to build select Microblaze projects.


SYSTEM?=base
HDF_FILE=./$(SYSTEM).hdf
REPO_PATH=../vivado/$(SYSTEM)/
MBBINS = pmod_adc.bin \
		pmod_dac.bin \
		pmod_oled.bin \
		pmod_als.bin \
		pmod_tc1.bin \
		pmod_tmp2.bin \
		pmod_dpot.bin \
		pmod_timer.bin \
		pmod_pwm.bin \
		mailbox.bin \
		pmod_grove_adc.bin \
		pmod_grove_oled.bin \
		pmod_grove_imu.bin \
		pmod_grove_buzzer.bin \
		pmod_grove_ledbar.bin \
		arduino_analog.bin \
		arduino_grove_adc.bin \
		arduino_grove_oled.bin \
		arduino_grove_imu.bin \
		arduino_grove_buzzer.bin \
		arduino_grove_ledbar.bin \
		pmod_grove_color.bin \
		arduino_grove_color.bin \
		pmod_grove_dlight.bin \
		arduino_grove_dlight.bin \
		pmod_grove_ear_hr.bin \
		arduino_grove_ear_hr.bin \
		pmod_grove_finger_hr.bin \
		arduino_grove_finger_hr.bin \
		pmod_grove_haptic_motor.bin \
		arduino_grove_haptic_motor.bin \
		pmod_grove_th02.bin \
		arduino_grove_th02.bin \
		arduino_lcd18.bin \
		vbx.bin

all: iop_bins
	@echo "Completed Microblaze Projects' Builds"

mb_bsp: sdk_workspace.stamp
	make -C bsp_pmod
	make -C bsp_arduino
	touch $@

%.bin: mb_bsp
	make -C $(subst .bin,,$@)/Debug $@

iop_bins: $(MBBINS)
	@cp */Debug/*.bin ./bin/


sdk_workspace: sdk_workspace.stamp

sdk_workspace.stamp: $(HDF_FILE)
	rm -rf bsp_pmod bsp_pmod hw_def .Xil .metadata
	xsdk  -batch -source build_xsdk.tcl $(HDF_FILE) $(REPO_PATH)
ifeq ($(SYSTEM),vbx)
	#avoid multiple definition error
	sed -i 's/XNullHandler/Xil_NullHandler/' bsp_pmod/iop1_mb/libsrc/standalone_v5_4/src/xil_assert.c
endif
	touch $@
clean:
	rm -f */Debug/*.bin
	rm -f */Debug/*.elf
	rm -f */Debug/*.elf.size
	rm -f */Debug/src/*.o
	rm -f */Debug/src/*.d
	rm -f bin/*
	rm -rf bsp_pmod bsp_arduino hw_def .Xil .metadata SDK.log sdk_workspace.stamp
	rm -rf sdk_import
