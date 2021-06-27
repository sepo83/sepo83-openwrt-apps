module("luci.controller.luci-app-dnsmasqext.nameserver", package.seeall)

function index()
    entry({"admin", "network", "nameserver"}, cbi("luci-app-dnsmasqext/nameserver"), "Nameserver", 50).dependent=false
end
