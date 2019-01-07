# Config for dell xps 13

# Disable Tracker
tracker daemon -t
cd ~/.config/autostart
cp -v /etc/xdg/autostart/tracker-* ./
for FILE in `ls`; do echo Hidden=true >> $FILE; done
rm -rf ~/.cache/tracker ~/.local/share/tracker

# Purge everything else
sudo apt purge rhythmbox gnome-contacts gnome-mahjongg gnome-mines gnome-sudoku gnome-music gnome-maps gnome-photos gnome-weather gnome-documents rhythmbox empathy evolution aisleriot brasero* gedit simple-scan gnome-calendar

# TLP PPA
sudo add-apt-repository ppa:linrunner/tlp -y

# KeepassXC PPA
sudo add-apt-repository ppa:phoerious/keepassxc -y

# Libreoffice PPA
sudo add-apt-repository ppa:libreoffice/ppa

sudo apt update 
sudo apt upgrade

sudo apt install keepassxc tlp libreoffice vim gnome-tweak-tool

# done
sudo apt-get clean
sudo apt-get autoremove
