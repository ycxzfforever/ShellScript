# Linux下自动获取IP地址
1、udhcpc只是获取一个IP，我们需要把脚本simple.script改名为default.script，放在开发板上的/usr/share/dhcpc/目录下，才能将获取的IP写到指定的网卡中；<br>
2、`set_addr.sh`用于根据配置文件设置静态IP地址；<br>
3、`set_mac.sh`用于设置mac地址；<br>
4、`set_route.sh`用于设置网关地址，一般使用udhcpc命令后不需设置，若自动获取IP地址与网关地址不在同一个网段，则需进行设置，另外需要将执行命令`udhcpc`的返回数据保存到`/data/udhcpc.log`，如在`/etc/init.d/rcS`中增加`udhcpc > /data/udhcpc.log &`。<br>

