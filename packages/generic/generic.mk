GENERIC_VERSION=0.1
GENERIC_SOURCE=

define GENERIC_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D $(GENERIC_PKGDIR)/S99simple-cloud-init $(TARGET_DIR)/etc/init.d/
	rm $(TARGET_DIR)/etc/init.d/S50avahi-daemon
	echo '::respawn:/sbin/getty -L tty1 0' >> $(TARGET_DIR)/etc/inittab
endef

$(eval $(generic-package))
