#!/bin/sh
#IPTABLES-NAT转发安装
#适用于CentOS7.x,其他版本自行测试
   echo "###############################################################"
   echo "###############################################################"
   echo "###############################################################"
   echo "#-------------------IPTABLES-NAT转发一键脚本-------------------#"
   echo "#                                                             #"
   echo "#------------------------转发环境安装-------------------------#"
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

systemctl stop firewalld.service
systemctl disable firewalld.service
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p
yum install -y iptables-services
yum install -y wget

exit 0
