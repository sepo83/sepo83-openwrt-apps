module("luci.controller.luci-app-dnsmasq_ext.cnames", package.seeall)

function index()
    entry({"admin", "network", "cnames"}, cbi("dnsmasq_ext-cnames/cnames"), "CNAME", 50).dependent=false
end
