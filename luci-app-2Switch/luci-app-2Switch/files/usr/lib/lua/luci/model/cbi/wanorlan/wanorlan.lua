local fs = require "nixio.fs"


m=Map("wanorlan",translate("路由猫"),translate("路由模式和交换机模式，其实就是翻转了wan口，本页执行以后是交换机模式。想换成路由模式点击下面的按钮"))
s=m:section(TypedSection,"arguments","")
s.addremove=false
s.anonymous=true
	view_enable = s:option(Flag,"Enabled",translate("Enable"))
	view_cfg = s:option(TextValue, "1", nil)
	view_cfg.rmempty = false
	view_cfg.rows = 5

	function view_cfg.cfgvalue()
		return nixio.fs.readfile("/etc/config/wanorlan.txt") or ""
	end

	button_arguments = s:option (Button, "_arguments", translate("电脑拨号模式")) 
	local wanorlan = luci.sys.exec("grep -c '' /etc/config/wanorlan.txt")
	button_arguments.inputtitle = translate ( "开启")
	button_arguments.inputstyle = "apply" 
	function button_arguments.write (self, section, value)
	luci.sys.call ( "/etc/config/lan.sh > /dev/null")
	end
	button_lan = s:option (Button, "_lan", translate("路由器模式")) 
	local wanorlan = luci.sys.exec("grep -c '' /etc/config/wanorlan.txt")
	button_lan.inputtitle = translate ( "开启")
	button_lan.inputstyle = "apply" 
	function button_lan.write (self, section, value)
	luci.sys.call ( "/etc/config/wan.sh > /dev/null")
	end

return m