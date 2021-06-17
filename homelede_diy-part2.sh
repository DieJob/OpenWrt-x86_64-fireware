#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.3/g' package/base-files/files/bin/config_generate

sed -i 's/CONFIG_PACKAGE_luci-i18n-unblockmusic-zh-cn=m/CONFIG_PACKAGE_luci-i18n-unblockmusic-zh-cn=y/g' .config
sed -i 's/CONFIG_PACKAGE_luci-app-unblockmusic=m/CONFIG_PACKAGE_luci-app-unblockmusic=y/g' .config

sed -i 's/CONFIG_GRUB_EFI_IMAGES=y/# CONFIG_GRUB_EFI_IMAGES is not set/g' .config

sed -i 's/CONFIG_USES_SQUASHFS=y/# CONFIG_USES_SQUASHFS is not set/g' .config
sed -i 's/CONFIG_TARGET_ROOTFS_SQUASHFS=y/# CONFIG_TARGET_ROOTFS_SQUASHFS is not set/g' .config
sed -i 's/CONFIG_TARGET_SQUASHFS_BLOCK_SIZE=256/# CONFIG_TARGET_SQUASHFS_BLOCK_SIZE is not set/g' .config
sed -i 's/CONFIG_KERNEL_SQUASHFS_FRAGMENT_CACHE_SIZE=3/# CONFIG_KERNEL_SQUASHFS_FRAGMENT_CACHE_SIZE is not set/g' .config
