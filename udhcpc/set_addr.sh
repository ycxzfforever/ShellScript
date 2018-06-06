Server_IP=$(grep -i "^My_IP" /JKJN/cls.conf | cut -d = -f 2 )
echo "My_IP:$Server_IP" >>/JKJN/ntp.log
ifconfig eth0 $Server_IP >>/JKJN/ntp.log
