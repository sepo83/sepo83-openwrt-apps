m = Map("dhcp", "Nameserver Entries") -- We want to edit the uci config file /etc/config/dhcp

-- s = m:section(TypedSection, "dnsmasq", "A/AAAA Records")
-- s.addremove = true
-- s.anonymous = true
--
-- s:option(Value, "cname", "Domain")
-- s:option(Value, "target", "Target")

s = m:section(TypedSection, "cname", "CName Records")
s.addremove = true
s.anonymous = true

s:option(Value, "cname", "Domain")
s:option(Value, "target", "Target")

s = m:section(TypedSection, "srvhost", "SRV Records")
s.addremove = true
s.anonymous = true

s:option(Value, "srv", "Service", "Name of the service. Must be in the form '<_service>.<_prot: usually _TCP or _UDP>.[<domain>]'; e.g. '_sip._udp.mydomain.com'")
s:option(Value, "target", "Target", "Name of the target; e.g. 'pbx.mydomain.com'")
s:option(Value, "port", "Port", "Name of the Port at the target; e.g. '5060'")
s:option(Value, "class", "Class", "Standard DNS meaning [RFC 1035]. SRV records occur in the IN Class.; e.g. '1'")
s:option(Value, "weight", "Weight", "The weight field specifies a relative weight for entries with the same priority; e.g. '10'")

return m -- Returns the map
