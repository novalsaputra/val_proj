sudo apt update
sudo dpkg --configure -a
sudo apt install xfce4
sudo apt install xrdp

sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini

#begin nfce
# open remote desktop manager in windows
# enter localhost:PORT_NUMBER
sudo /etc/init.d/xrdp start 
