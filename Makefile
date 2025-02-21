# object file for the kernel module
obj-m += rustsensorreader.o

# path to the linux kernel source tree
KDIR := /lib/modules/$(shell uname -r)/build

# working dir
PWD := $(shell pwd)

# default target: build the kernel module
all:
    $(MAKE) -C $(KDIR) M=$(PWD) modules

# clean up compiled files
clean:
    $(MAKE) -C $(KDIR) M=$(PWD) clean
