MODULE_NAME := sblkdev
obj-m := $(MODULE_NAME).o

OBJ_LIST := main.o
$(MODULE_NAME)-y += $(OBJ_LIST)

ccflags-y := -O2

KERNELDIR := /lib/modules/$(shell uname -r)/build

all: sblkdev

sblkdev:
	make -C $(KERNELDIR) M=$(PWD) modules
