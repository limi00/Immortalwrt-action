#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add Adguardhome
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
# rm -rf feeds/packages/net/adguardhome
# svn co https://github.com/openwrt/packages/trunk/net/adguardhome feeds/packages/net/adguardhome
# sed -i '/\t)/a\\t$(STAGING_DIR_HOST)/bin/upx --lzma --best $(GO_PKG_BUILD_BIN_DIR)/AdGuardHome' ./feeds/packages/net/adguardhome/Makefile
# sed -i '/init/d' feeds/packages/net/adguardhome/Makefile

# Add a feed source
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i'$a src-git project https://github.com/project-openwrt/openwrt' feeds.conf.default
# sed -i'$a src-git openwrt https://github.com/openwrt/packages' feeds.conf.default
# echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> "feeds.conf.default"
# echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> "feeds.conf.default"
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> "feeds.conf.default"

# # Define My Package
git clone https://github.com/Ausaci/luci-app-nat6-helper.git package/diy/luci-app-nat6-helper.git
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/diy/luci-app-adguardhome
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/diy/luci-app-passwall
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
# git clone https://github.com/rufengsuixing/luci-app-usb3disable.git package/diy/luci-app-usb3disable
# git clone https://github.com/sirpdboy/netspeedtest.git package/diy/luci-app-netspeedtest
# git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/diy/luci-app-autotimeset
# git clone https://github.com/zzsj0928/luci-app-pushbot package/diy/luci-app-pushbot
# git clone https://github.com/linkease/istore.git package/diy/luci-app-store
# git clone https://github.com/tty228/luci-app-serverchan.git package/mine/luci-app-serverchan
