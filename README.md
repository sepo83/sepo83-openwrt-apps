sepo83-openwrt-apps
===
This repo contains some custom luci-apps for OpenWrt. 
Currently the following is included:

*luci-app-dnsmasqext*
* add menu entry for CNAMES 
* add menu entry for extended dnsmasq configuration
  * set ip range for dhcp

How to use
---
0. Install OpenWrt SDK according to https://openwrt.org/docs/guide-developer/using_the_sdk

1. Add feeds
```bash
cd <path-to-sdk>/
echo "src-git sepo83 https://github.com/sepo83/sepo83-openwrt-apps.git" >> feeds.conf.default
```

2. Update and Install
```bash
# Update feeds
./scripts/feeds update -a
./scripts/feeds install -a
```

3. configure make 
```bash
make menuconfig
```
  1. go to "LuCi > Applications" and mark "luci-app-<dnsmasqext>" with "m"
  2. go to "Global Build Settings" and in the submenu, deselect/exclude the following options:
  
    Select all target specific packages by default
    Select all kernel module packages by default
    Select all userspace packages by default

4. make / compile
```bash
make package/feeds/natelol/luci-app-xxxx/compile
```
  
5. install package
  1. After the compilation is finished, the generated .ipk files are placed in the bin/packages and bin/targets directories inside the directory you extracted the SDK into. 
  2. install package via LuCi > System > Software > Upload Package ...
