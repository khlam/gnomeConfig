# Config for dell xps 13

# Disable Tracker
tracker daemon -t
cd ~/.config/autostart
cp -v /etc/xdg/autostart/tracker-* ./
for FILE in `ls`; do echo Hidden=true >> $FILE; done
rm -rf ~/.cache/tracker ~/.local/share/tracker

# Purge everything else
sudo apt purge rhythmbox gnome-contacts gnome-mahjongg gnome-mines gnome-sudoku gnome-music gnome-maps gnome-photos gnome-weather gnome-documents rhythmbox empathy evolution aisleriot brasero* gedit simple-scan gnome-calendar

# Get TLP PPA
sudo add-apt-repository ppa:linrunner/tlp -y

# Get KeepassXC PPA
sudo add-apt-repository ppa:phoerious/keepassxc -y

# Update && Upgrade
sudo apt upgrade && sudo apt upgrade

# Install safe-rm
sudo apt install safe-rm

# Install KeepassXC
sudo apt install keepassxc 

# Remove Libreoffice
sudo apt-get remove --purge libreoffice*

# Final Clean
sudo apt-get clean
sudo apt-get autoremove
