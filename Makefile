include $(TOPDIR)/rules.mk

LUCI_TITLE:=FoxHound Theme
LUCI_DEPENDS:=+luci-base
PKG_VERSION:=1.5.2
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-theme-foxhound
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=9. Themes
  TITLE:=FoxHound Theme
  DEPENDS:=+luci-base
endef

define Build/Compile
endef

define Package/luci-theme-foxhound/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/themes/foxhound
	$(CP) -a ./view/* $(1)/usr/lib/lua/luci/view/themes/foxhound/
	$(INSTALL_DIR) $(1)/www/luci-static/foxhound
	$(CP) -a ./resources $(1)/www/luci-static/foxhound/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(CP) -a ./controller/* $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/themes/foxhound/sysauth
	$(CP) -a ./ut\ files/* $(1)/usr/lib/lua/luci/view/themes/foxhound/sysauth/
endef

$(eval $(call BuildPackage,luci-theme-foxhound))
