# shell-script-for-zabbix-agent2
[**Download and install Zabbix 6.0 LTS for CentOS 7**](https://www.zabbix.com/download?zabbix=6.0&os_distribution=centos&os_version=7&components=agent&db=&ws=)
**在此链接找到系统对应的安装方式**

此脚本是使用官方推荐的安装方式编写
脚本中的示例：centos7 zabbix6.0lts agent2
一定要确保防火墙放行了端口10050非常重要！
注意如果是自身需要监控zabbix主机，Server IP要手动改成容器的IP地址！

文件列表
~~~
[root@terminal_01 ~]# rpm -ql zabbix-agent
/etc/logrotate.d/zabbix-agent
/etc/zabbix/zabbix_agentd.conf
/etc/zabbix/zabbix_agentd.d
/usr/lib/systemd/system/zabbix-agent.service
/usr/lib/tmpfiles.d/zabbix-agent.conf
/usr/sbin/zabbix_agentd
/usr/share/doc/zabbix-agent-6.0.12
/usr/share/doc/zabbix-agent-6.0.12/AUTHORS
/usr/share/doc/zabbix-agent-6.0.12/COPYING
/usr/share/doc/zabbix-agent-6.0.12/ChangeLog
/usr/share/doc/zabbix-agent-6.0.12/NEWS
/usr/share/doc/zabbix-agent-6.0.12/README
/usr/share/doc/zabbix-agent-6.0.12/userparameter_mysql.conf
/usr/share/man/man8/zabbix_agentd.8.gz
/var/log/zabbix
/var/run/zabbix
~~~
