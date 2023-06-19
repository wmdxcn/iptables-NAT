#!/bin/sh
#IPTABLES-NAT转发一键脚本
#适用于CentOS7.x,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#-------------------IPTABLES-NAT转发一键脚本-------------------#"
   echo "#                                                             #"
   echo "#------------------------1001-to-1010-------------------------#"
   echo "#                                                             #"
   echo "#---------------------------开始运行--------------------------#"
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
if [ $(whoami) != "root" ];then
	echo "请使用root权限运行此一键安装命令！"
        echo "切换到root用户：sudo su root"
	exit 1;
fi

if grep -Eqi "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    echo ""
else
    echo "脚本目前仅支持Centos7"
    exit 1
fi

localip=$(ip addr | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -E -v "^127\.|^255\.|^0\." | head -n 1)

read -p "源服务器ip1(本地端口1001):" ip1
read -p "源服务器ip2(本地端口1002):" ip2
read -p "源服务器ip3(本地端口1003):" ip3
read -p "源服务器ip4(本地端口1004):" ip4
read -p "源服务器ip5(本地端口1005):" ip5
read -p "源服务器ip6(本地端口1006):" ip6
read -p "源服务器ip7(本地端口1007):" ip7
read -p "源服务器ip8(本地端口1008):" ip8
read -p "源服务器ip9(本地端口1009):" ip9
read -p "源服务器ip10(本地端口1010):" ip10

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1001 -j DNAT --to-destination $ip1:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1001 -j DNAT --to-destination $ip1:444
iptables -t nat -A POSTROUTING -d $ip1 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip1 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1002 -j DNAT --to-destination $ip2:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1002 -j DNAT --to-destination $ip2:444
iptables -t nat -A POSTROUTING -d $ip2 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip2 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1003 -j DNAT --to-destination $ip3:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1003 -j DNAT --to-destination $ip3:444
iptables -t nat -A POSTROUTING -d $ip3 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip3 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1004 -j DNAT --to-destination $ip4:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1004 -j DNAT --to-destination $ip4:444
iptables -t nat -A POSTROUTING -d $ip4 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip4 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1005 -j DNAT --to-destination $ip5:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1005 -j DNAT --to-destination $ip5:444
iptables -t nat -A POSTROUTING -d $ip5 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip5 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1006 -j DNAT --to-destination $ip6:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1006 -j DNAT --to-destination $ip6:444
iptables -t nat -A POSTROUTING -d $ip6 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip6 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1007 -j DNAT --to-destination $ip7:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1007 -j DNAT --to-destination $ip7:444
iptables -t nat -A POSTROUTING -d $ip7 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip7 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1008 -j DNAT --to-destination $ip8:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1008 -j DNAT --to-destination $ip8:444
iptables -t nat -A POSTROUTING -d $ip8 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip8 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1009 -j DNAT --to-destination $ip9:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1009 -j DNAT --to-destination $ip9:444
iptables -t nat -A POSTROUTING -d $ip9 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip9 -p udp -m udp --dport 444 -j SNAT --to-source $localip

iptables -t nat -A PREROUTING -p tcp -m tcp --dport 1010 -j DNAT --to-destination $ip10:444
iptables -t nat -A PREROUTING -p udp -m udp --dport 1010 -j DNAT --to-destination $ip10:444
iptables -t nat -A POSTROUTING -d $ip10 -p tcp -m tcp --dport 444 -j SNAT --to-source $localip
iptables -t nat -A POSTROUTING -d $ip10 -p udp -m udp --dport 444 -j SNAT --to-source $localip

service iptables save
cat /etc/sysconfig/iptables

exit 0
