######################################
#
# MIDIROUTER
#
######################################
OCS_MIDIROUTER_VERSION = 8c175649b4e7392002fad54d67dd195ad7e42ec2
OCS_MIDIROUTER_SITE = https://github.com/OilCanSteve/ocs-midirouter.git
OCS_MIDIROUTER_SITE_METHOD = git
OCS_MIDIROUTER_BUNDLES = ocs-midirouter.lv2

OCS_MIDIROUTER_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) MOD=1 OPTIMIZATIONS="" PREFIX=/usr -C $(@D)/source

define OCS_MIDIROUTER_BUILD_CMDS
	$(OCS_MIDIROUTER_TARGET_MAKE)
endef

define OCS_MIDIROUTER_INSTALL_TARGET_CMDS
	$(OCS_MIDIROUTER_TARGET_MAKE) install DESTDIR=$(TARGET_DIR)
endef

$(eval $(generic-package))