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

install: libsc-common.a
	$(MKDIR) $(DESTDIR)/usr/include/sc
	$(MKDIR) $(DESTDIR)/usr/lib
	$(INSTALL) $(INCLUDE_DIR)/sc/*.h $(DESTDIR)/usr/include/sc
	$(INSTALL) $(LIB_DIR)/*.a $(DESTDIR)/usr/lib

pkg-deb: all
	dpkg-buildpackage -us -uc -rfakeroot

include $(ROOT)/Rules.mk
