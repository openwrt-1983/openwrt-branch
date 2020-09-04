module("luci.controller.wanorlan", package.seeall)
function index()
        if not nixio.fs.access("/etc/config/wanorlan") then
                return
        end
	entry({"admin", "services", "wanorlan"},alias("admin", "services", "wanorlan","wanorlan"),_("路由猫"), 2).dependent = true
	
	entry({"admin", "services", "wanorlan","wanorlan"}, cbi("wanorlan/wanorlan"),_("路由猫"),11).leaf = true


end


