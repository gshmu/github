sudo add-apt-repository ppa:lainme/pidgin-lwqq
sudo apt-get update
sudo apt-get install ibus-rime pidgin pidgin-lwqq python2.7-dev synaptic python-pip git python3-dev python3-pip
sudo reboot
sudo pip3 install --upgrade pycrypto keyring
sh home_bin/pycharm/bin/pycharm.sh 
sudo pip install shadowsocks
ifconfig 
sslocal --help
sslocal -s shadowx.pw -p 55804 -b 0.0.0.0 -l 1080 -k 985211 -m rc4-md5
sudo apt-get install vim
sudo vim /etc/default/grub 
sudo update-grub
sudo vim /etc/hostname
sudo vim /etc/hosts
ecryptfs-unwrap-passphrase 
convmv -r -f utf8 -t iso88591 * --notest --nosmart && convmv -r -f gbk -t utf8 * --notest --nosmart
svn checkout --username lugang https://svn.server.com/
# sudo freshclam 
clamscan Downloads/
svn checkout --username lugang https://svn.lab.intra.nsfocus.com/svn/wsp
sudo apt-get install libmysqld-dev
ll /dev/sd*
dd if=/dev/sda of=win7.mbr bs=512 count=1
sudo chmod o+rw /dev/sda 
dd if=/dev/sda of=win7.mbr bs=512 count=1
vboxmanage internalcommands createrawvmdk -filename /home/gshmu/VirtualBox\ VMs/Win7HD.vmdk -rawdisk /dev/sda -partitions 1,2 -mbr VirtualBox\ VMs/win7.mbr -relative
sudo chmod o+rw /dev/sda1 /dev/sda2
vboxmanage internalcommands createrawvmdk -filename /home/gshmu/VirtualBox\ VMs/Win7HD.vmdk -rawdisk /dev/sda -partitions 1,2 -mbr VirtualBox\ VMs/win7.mbr -relative
sudo mkdir /home/public
sudo chown gshmu:gshmu /home/public/
sudo chmod 777 /home/public/
/etc/init.d/vboxdrv setup
sudo /etc/init.d/vboxdrv setup
ssh-keygen -t rsa -C "i@aim.com"
ssh-add ~/.ssh/id_rsa
sudo vim /var/log/syslog
sudo chmod o+rw /dev/sda1 /dev/sda2
sudo chown root:root /etc/init.d/iDo.sh 
java -version
sudo vim /etc/sysctl.conf 
sudo sysctl -p
sudo apt-get install oracle-java7-installer oracle-java7-set-default 
sh home_bin/pycharm/bin/pycharm.sh 
sudo apt-get install python-virtualenv
python manage.py syncdb
ls /etc/init.d/iDo.sh 
cd /etc/init.d
sudo update-rc.d iDo.sh defaults 98
sudo gpasswd -a $USER fuse
sudo vim /etc/fstab
chmod a+x home_bin/iRun.sh 
VBoxManage --version
sudo /etc/init.d/vboxdrv setup
convmv -r -f utf8 -t iso88591 * --notest --nosmart && convmv -r -f gbk -t utf8 * --notest --nosmart
cat /var/log/syslog
sudo dd if=/dev/zero of=swap bs=1024 count=8000000
sudo mkswap -f swap 
sudo swapon swap 
sudo vim /etc/fstab
ssh-copy-id root@10.10.10.10
sudo apt-get install xdotool wmctrl 
sshfs -o idmap=user root@10.10.10.10:/ /home/gshmu/rBox/kali
sudo apt-get install xclip 
curl -I http://www.rapid7.com/db/vulnerabilities/http-cookie-http-only-flag
sudo killall unity-panel-service
sh ~/update-kali.sh 
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
. ../env/bin/activate
ssh 10.65.200.50
java -jar /home/gshmu/job/recheck/lib/iis-short/IIS_shortname_scanner.jar 2 20 http://demo.testfire.net /home/gshmu/job/recheck/lib/iis-short/config.xml
sudo apt-get install meld
sudo apt-get install tmux shutter mtpaint byobu
~/home_bin/wkhtmltopdf-amd64 aherf.html out.pdf
sudo apt-get install nmap
fusermount -u ./rBox/rs-
sudo pip install celery
sudo dmidecode|grep -A16 "Memory Device"
redis-cli -h 10.10.10.10
chromeos-apk --scale /home/gshmu/Downloads/cmbc.apk --name cn.com.cmbc.mbank.android --tablet
sudo dpkg -P google-chrome-stable 
sudo tail -f /var/log/syslog
killall unity-scope-home
sudo pip3 install pyinotify
update-rc.d 
vim /etc/NetworkManager/system-connections/VPN++ 
nmcli con 
redis-cli -h 10.10.10.10 monitor
byobu -S forward
sudo service lightdm restart 
sudo killall unity-panel-service
sudo apt-get install ubuntu-wallpapers-karmic ubuntu-wallpapers-lucid ubuntu-wallpapers-maverick ubuntu-wallpapers-natty ubuntu-wallpapers-oneiric ubuntu-wallpapers-precise ubuntu-wallpapers-quantal ubuntu-wallpapers-raring ubuntu-wallpapers-saucy
sudo add-apt-repository ppa:fyrmir/livewallpaper-daily
sudo apt-get update && sudo apt-get install livewallpaper
sudo apt-get install livewallpaper-config livewallpaper-indicator
sudo /sbin/rcvboxdrv setup
curl -I -L -c -b /tmp/curl.cookies http://gshmu.tk/
sudo add-apt-repository ppa:ubuntu-sdk-team/ppa
sudo apt-get update
sudo apt-get install ubuntu-device-flash phablet-tools
dpkg -L phablet-tools | grep bin
adb devices
adb shell input keyevent 26
adb shell ps | grep com
adb shell pm block com.android.browser
cssh 10.10.10.10 10.10.10.10 10.10.10.10
puttygen id.ppk -O private-openssh -o .ssh/id_wvss
ssh-keygen -p -f .ssh/id_wvss
ssh-add .ssh/id_wvss
cd home_bin/mongochef-3.2.0-linux-x64-dist/
./bin/mongochef.sh 
sudo apt-get install dsniff
lsblk 
cat ~/.ssh/pub/id.pub | ssh 10.10.10.10 'cat >> ~/.ssh/authorized_keys'
rdesktop-vrdp 10.10.10.10
sudo vim /etc/ssh/sshd_config 
sudo apt-get install openswan xl2tpd 
sudo gedit /etc/ipsec.conf 
vim /etc/ipsec.secrets 
sudo vim /etc/ipsec.secrets 
sudo vim /etc/ipsec.conf 
sudo ipsec auto --add L2TP-PSK
sudo vim /etc/ipsec.conf 
sudo vim /etc/xl2tpd/xl2tpd.conf 
sudo vim /etc/ppp/options.l2tpd.client
sudo service lightdm force-reload 
sudo service lightdm restart 
sudo /usr/lib/virtualbox/vboxdrv.sh setup
sudo apt-add-repository ppa:seriy-pr/network-manager-l2tp && sudo apt-get update && sudo apt-get install network-manager-l2tp-gnome
sudo apt-get install lrzsz
sz super_grub2_disk_hybrid_2.02s4.iso
sz super_grub2_disk_x86_64_efi_2.02s4.iso
#svn propset svn:executable ON cookie_inject_detect.sh 
sudo apt-get install mbr
man install-mbr 
sudo apt-get install syslinux
cp /usr/lib/syslinux/mbr.bin /home/public/sys.mbr
. ~/job/env/bin/activate
pip install --proxy 127.0.0.1:8088 
sudo apt-get install compizconfig-settings-manager compiz-plugins
sudo vim /etc/sysctl.d/10-magic-sysrq.conf
sudo pm-hibernate
sudo vim /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
nmblookup -A 10.10.10.10
sudo /sbin/vboxconfig 
sudo ssh -L 0.0.0.0:80:0.0.0.0:8000 aoe@127.0.0.1 
make dclean &>/dev/null 
./config enable-weak-ssl-ciphers enable-ssl2 --prefix=/home/gshmu/home_bin/ssl
make depend
make all
make install
meld svn/1 svn/2
sudo apt-get install exfat-fuse exfat-utils
compiz --replace &>/dev/null &
nmap -vv -T4 -p 80 10.10.10.10/24
curl http://gshmu.tk 2>&1 | grep "color_td1" | grep "font_width" | tail -n 1 | awk -F'>' '{print $2}' | awk -F'<' '{print $1}'
python setup.py bdist_egg
