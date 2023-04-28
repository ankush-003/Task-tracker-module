obj-m += main.o

kdir = /lib/modules/$(shell uname -r)/build 
PWD := $(shell pwd)
# WARN    := -W -Wall -Wstrict-prototypes -Wmissing-prototypes
# INCLUDE := -isystem /lib/modules/`uname -r`/build/include
# CFLAGS  := -O2 -DMODULE -D__KERNEL__ ${WARN} ${INCLUDE}
# CC      := gcc-3.0

# make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
all:
	sudo make -C $(kdir) M=$(PWD) modules

clean:
	sudo make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean