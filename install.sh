#!/bin/bash

wget https://raw.githubusercontent.com/dsantos3526/sshssl/main/tools/badvpn_1.999.130-openwrt_mips_24kc.ipk
wget https://raw.githubusercontent.com/dsantos3526/sshssl/main/tools/corkscrew_2.0-1-openwrt_mips_24kc.ipk
wget https://raw.githubusercontent.com/dsantos3526/sshssl/main/tools/sshpass_1.06-openwrt_mips_24kc.ipk

opkg install openvpn-openssl && 
opkg install ip-full && 
opkg install openssh-client && 
opkg install stunnel && 
opkg install lsof && 
opkg install stunnel && 
opkg install --force-depends *.ipk &&
opkg install httping fping screen python python3 coreutils-nohup libevent2 redsocks

#Download 
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/stl.sh" -O /usr/bin/stl
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/gproxy.sh" -O /usr/bin/gproxy
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/autorekonek-stl.sh" -O /usr/bin/autorekonek-stl
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/tunnel.py" -O /root/akun/tunnel.py
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/ssh.py" -O /root/akun/ssh.py
wget --no-check-certificate "https://raw.githubusercontent.com/dsantos3526/sshssl/main/stl/inject.py" -O /root/akun/inject.py

chmod +x /usr/bin/gproxy
chmod +x /usr/bin/stl
chmod +x /root/akun/tunnel.py
chmod +x /root/akun/ssh.py
chmod +x /root/akun/inject.py
chmod +x /usr/bin/autorekonek-stl
rm -r ~/*.ipk
rm -r ~/install.sh
mkdir -p ~/.ssh/
touch ~/akun/ssl.conf
touch ~/.ssh/config
touch ~/akun/stl.txt
touch ~/akun/ipmodem.txt 
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'stl'"

