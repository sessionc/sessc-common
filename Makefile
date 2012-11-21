# 
# Makefile
#

ROOT := .
include $(ROOT)/Common.mk

all: libsc-common.a

libsc-common:
	$(MAKE) --dir=src

libsc-common.a: libsc-common
	$(RM) $(LIB_DIR)/$@
	$(AR) $(ARFLAGS) $(BUILD_DIR)/$@ $(BUILD_DIR)/*.o
	$(CP) -v $(BUILD_DIR)/$@ $(LIB_DIR)/$@

include $(ROOT)/Rules.mk
