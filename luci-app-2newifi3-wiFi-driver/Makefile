include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-2newifi3-wiFi-driver
PKG_VERSION:=long1983
PKG_RELEASE:=1.1.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=LuCI
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(PKG_NAME)
  DEPENDS:=+kmod-mt7603 +kmod-mt76x2 +wpad
  PKGARCH:=all
  MAINTAINER:=long1983
endef

define Package/$(PKG_NAME)/description
$(PKG_NAME)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/prerm
用开源的WiFi驱动 需要手动取消这几个包 -luci-app-mtwifi -kmod-mt76x2e -kmod-mt7603e

自己取消掉开源驱动（kmod-mt7603/kmod-mt76x2/wpad/hostapd)
然后选上 kmod-mt7603e kmod-mt76x2e 和 luci-app-mtwifi，测试下 ok 我就改成默认用闭源了
其他人要用闭源驱动的同理
目前支持 mt7603+mt7612，mt7603+mt7615，mt7615dn， mt7615+mt7615

endef

define Package/$(PKG_NAME)/install
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
