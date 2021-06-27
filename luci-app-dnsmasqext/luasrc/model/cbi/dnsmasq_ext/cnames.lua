m = Map("dhcp", "CNAMES") -- We want to edit the uci config file /etc/config/network

s = m:section(TypedSection, "cname", "CName Entries")
s.addremove = true -- Allow the user to create and remove the interfaces
s.tabbed = true

s:option(Value, "cname", "Domain")
s:option(Value, "target", "Target")


return m -- Returns the map
