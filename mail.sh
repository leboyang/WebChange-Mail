#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
curl  http://my.vps1st.com/cart.php  -o  /root/mail.html
num=`cat /root/mail.html| tail -n +328 | head -n 20 | grep 'qty' | wc -l`
if [ $num -gt 0 ];
 then
   echo "very good"|mailx -s "good" 155########@wo.cn
   crontab -r
fi 
