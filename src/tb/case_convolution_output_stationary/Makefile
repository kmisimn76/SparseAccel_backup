FAKETIME=faketime -f "-1y" 

#TARGET=sw_emu
#TARGET=hw_emu
#TARGET=hw

JOBS=-j 12
OPTIMIZE=

DEFINE+= -D ARRAY_K=32
DEFINE+= -D ARRAY_W=8
DEFINE+= -D PORT_C=2
DEFINE+= -D PORT_K=2
DEFINE+= -D BLOCK_SIZE=4

DEFINE+= -D WEIGHT_L1_SIZE=27000
DEFINE+= -D DATA_L1_SIZE=49700

DEFINE+= -D WEIGHT_L2_SIZE=43200
DEFINE+= -D DATA_L2_SIZE=78400
DEFINE+= -D OUTPUT_L2_SIZE=35840


PROFILE=--profile_kernel data:all:all:all --profile_kernel stall:all:all # move to config_sp
DEBUG=-g

xrt_path = $(XILINX_XRT)
LINK_CONFIG = -L$(xrt_path)/lib -lOpenCL -lpthread -lrt -lstdc++
HEADER_OPTION = -I../../../common -I../.. -I.. -I../../device
BUILD_DIR = ./build.${TARGET}
LOG_DIR = ./log.${TARGET}

all: accelerator.${TARGET}.xclbin testbench emu

# Build HLS Kernel
conv.${TARGET}.xo: ../../device/Conv_sysarr.cpp
	${FAKETIME} v++ ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} --log_dir ${LOG_DIR} --temp_dir ${BUILD_DIR} -c -k Conv_sysarr ${DEFINE} --config config_sp ${HEADER_OPTION} -o'conv.${TARGET}.xo' ./../../device/Conv_sysarr.cpp ${JOBS}

accelerator.${TARGET}.xclbin: conv.${TARGET}.xo
	${FAKETIME} v++ -l ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} --log_dir ${LOG_DIR} --temp_dir ${BUILD_DIR} ${DEFINE} conv.${TARGET}.xo -o'accelerator.${TARGET}.xclbin' --config config_sp ${JOBS}

# Build TestBench - common
TestEnvironment.o: ../TestEnvironment.cpp ../TestEnvironment.h
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ./../TestEnvironment.cpp
timer.o: ../../../common/timer.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../../../common/timer.cpp
ocl_util.o: ../../../common/ocl_util.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../../../common/ocl_util.cpp

# Build TestBench - Specific
ConvTestBench.o: ./ConvTestBench.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ././ConvTestBench.cpp
ConvTask.o: ../Tasks/ConvTask.cpp ../Tasks/ConvTask.h
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ./../Tasks/ConvTask.cpp
.PHONY: testbench
testbench: ConvTestBench.o TestEnvironment.o ConvTask.o timer.o ocl_util.o
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) ConvTestBench.o TestEnvironment.o ConvTask.o timer.o ocl_util.o -o testbench $(LINK_CONFIG) $(OCV_LIBS)

# Run Test
.PHONY: emu
emu:
	emconfigutil --platform xilinx_u200_xdma_201830_2 --od .
	XCL_EMULATION_MODE=$(TARGET) ./testbench accelerator.${TARGET}.xclbin ./../test_layer_info.txt > print_log_tb.txt || (echo "\n\n\n           test failed.... :( \n      @(${shell pwd})\n\n\n"; sh -c 'exit 1')

.PHONY: debug
debug:
	emconfigutil --platform xilinx_u200_xdma_201830_2 --od .
	XCL_EMULATION_MODE=sw_emu gdb --args ./testbench accelerator.sw_emu.xclbin ./../test_layer_info.txt


clean:
	-rm -rf build.sw_emu/*
	-rm -rf build.hw_emu/*
	-rm -rf build.hw/*
	-rm -rf log.sw_emu/*
	-rm -rf log.hw_emu/*
	-rm -rf log.hw/*
	-rm *.o
	-rm testbench
	-rm *.xo
	-rm *.xclbin
	-rm *.ltx
	-rm -r _x
	-rm *.log
	-rm *summary
	-rm *.xclbin.info