"""
This is set for ssh contact. It solve problem of ssh contact broken.
reference url:https://www.jianshu.com/p/3e4533b5034f
"""
echo export TMOUT=1000000 >> /root/.bash_profile
cat /root/.bash_profile
source /root/.bash_profile
cp /etc/ssh/sshd_config /etc/ssh/sshd_config_bak
echo ClientAliveInterval=60 >> /etc/ssh/sshd_config
service sshd restart
cat /etc/ssh/sshd_config
service sshd restart
exit
