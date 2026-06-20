#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-theme-foxhound
PKG_VERSION:=1.5.2
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-theme-foxhound
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=9. Themes
  TITLE:=FoxHound Theme
  DEPENDS:=+luci-base +luci-compat +luci-lib-jsonc
  PKGARCH:=all
endef

define Package/luci-theme-foxhound/description
  A clean and modern OpenWrt LuCI Bootstrap theme overhaul.
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-theme-foxhound/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/themes/foxhound
	$(INSTALL_DIR) $(1)/www/luci-static/foxhound/resources
	$(CP) ./view/* $(1)/usr/lib/lua/luci/view/themes/foxhound/
	$(CP) ./resources/* $(1)/www/luci-static/foxhound/resources/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/foxhound
	$(CP) ./controller/* $(1)/usr/lib/lua/luci/controller/foxhound/
	$(INSTALL_DIR) $(1)/usr/share/ucode/luci/template/theme/foxhound
	$(CP) "./ut files/"* $(1)/usr/share/ucode/luci/template/theme/foxhound/
endef

$(eval $(call BuildPackage,luci-theme-foxhound))
