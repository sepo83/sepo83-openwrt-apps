module("luci.controller.luci-app-dnsmasqext.cnames", package.seeall)

function index()
    entry({"admin", "network", "cnames"}, cbi("luci-app-dnsmasqext/cnames"), "CNAME", 50).dependent=false
end
