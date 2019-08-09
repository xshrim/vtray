只安装ipv4：
	安装vps：
		wget --no-check-certificate https://freed.ga/github/shadowsocksR.sh; bash shadowsocksR.sh
	安装锐速加速
		降内核： rpm -ivh http://soft.91yun.org/ISO/Linux/CentOS/kernel/kernel-3.10.0-229.1.2.el7.x86_64.rpm --force
		检查：rpm -qa | grep kernel
		重启：reboot
		安装：wget https://shiyu.pro/serverspeeder.sh && bash serverspeeder.sh
		查看运行状态：/serverspeeder/bin/serverSpeeder.sh status
	PS：测速软件
		安装：wget https://shiyu.pro/file/speedtest.py
		移动到/bin下：mv speedtest.py /bin/
		运行权限：chmod +x /bin/speedtest.py
		运行：speedtest.py


安装支持ipv6的vps：
	安装vps：wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
		 chmod +x shadowsocks-all.sh
		 ./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
		安装shadowsocks-python版，安装完之后在/etc/shadowsocks-python/config.json文件中将server项内容改为"::"
	安装BBR加速：wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
		     chmod +x bbr.sh
		     ./bbr.sh
		     sysctl net.ipv4.tcp_available_congestion_control (返回net.ipv4.tcp_available_congestion_control = bbr cubic reno)
		     sysctl net.ipv4.tcp_congestion_control (返回net.ipv4.tcp_congestion_control = bbr)
		     sysctl net.core.default_qdisc （返回net.core.default_qdisc = fq）
		     lsmod | grep bbr （如果有 tcp_bbr 模块说明安装成功）
	访问bt：
		设置下载工具，如UT的代理：“设置”->“连接”,代理类型选择Socks5，代理IP为ip地址，端口如1080，注意一定要将“对于主机名查询使用代理”，“对于点对点连接使用代理”打钩！