KERNELDIR ?= /lib/modules/$(shell uname -r)/build

obj-m := sun50i-a64-gpadc-iio.o

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install
