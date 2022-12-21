#!/bin/bash

HOSTIP=192.168.209.128 #改成你的zabbix主机ip
rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/7/x86_64/zabbix-release-6.0-4.el7.noarch.rpm
yum clean all
yum -y install zabbix-agent2 zabbix-agent2-plugin-*

sed -i '80s#Server=127.0.0.1#Server='"${HOSTIP}"'#' /etc/zabbix/zabbix_agent2.conf
sed -i '133s#ServerActive=127.0.0.1#ServerActive='"${HOSTIP}"'#' /etc/zabbix/zabbix_agent2.conf
sed -i '144s#Hostname=Zabbix server#Hostname='"${HOSTNAME}"'#' /etc/zabbix/zabbix_agent2.conf
systemctl restart zabbix-agent2
systemctl enable zabbix-agent2
