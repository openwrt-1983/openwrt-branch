include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-2Switch
PKG_VERSION:=long1983
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=LuCI
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(PKG_NAME)
  DEPENDS:=
  PKGARCH:=all
  MAINTAINER:=long1983
endef

define Package/$(PKG_NAME)/description
$(PKG_NAME)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/prerm
#!/bin/sh
chmod 777 /etc/config/lan.sh
chmod 777 /etc/config/wan.sh
chmod 777 /www/cgi-bin/pppoe
chmod 777 /www/pppoe.html

uci set wireless.radio0.disabled=0
uci set wireless.radio1.disabled=0
uci commit wireless
wifi

exit 0
endef

define Package/$(PKG_NAME)/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
