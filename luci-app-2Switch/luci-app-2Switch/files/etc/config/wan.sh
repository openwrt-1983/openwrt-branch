#!/bin/sh
uci set network.@switch_vlan[0].ports='0 1 2 3 6t'
uci set network.@switch_vlan[1].ports='4 6t'
uci delete network.@switch_vlan[2]=
uci commit network

#uci set wireless.default_radio0.disabled=0
#uci set wireless.default_radio1.disabled=0
#uci commit wireless
#wifi

#重启网络
/etc/init.d/network restart
rm -f /etc/config/wanorlan.txt
echo  >>/etc/config/wanorlan.txt
echo  >>/etc/config/wanorlan.txt
echo  >>/etc/config/wanorlan.txt
echo 现在是：路由器模式 >>/etc/config/wanorlan.txt
cp /etc/config/wanorlan.txt /www/wanorlan.txt

