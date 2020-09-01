include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-1usb
PKG_VERSION:=long1983
PKG_RELEASE:=1.1.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=LuCI
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(PKG_NAME)
  DEPENDS:=+kmod-usb-ohci +kmod-usb-storage +ntfs-3g +mount-utils +kmod-usb-core +kmod-usb2 +kmod-usb3 +kmod-nls-base +kmod-nls-utf8 +kmod-nls-cp437 +kmod-nls-iso8859-1 +kmod-fs-ntfs +kmod-fs-vfat +kmod-fs-ext4 +block-mount +kmod-scsi-core +kmod-usb-storage-extras +kmod-usb-storage +kmod-usb-uhci
  PKGARCH:=all
  MAINTAINER:=long1983
endef

define Package/$(PKG_NAME)/description
$(PKG_NAME)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/prerm
endef

define Package/$(PKG_NAME)/install
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
