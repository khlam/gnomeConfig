# Config for dell xps 13

# Disable Trackers
tracker daemon -t
cd ~/.config/autostart
cp -v /etc/xdg/autostart/tracker-* ./
for FILE in `ls`; do echo Hidden=true >> $FILE; done
rm -rf ~/.cache/tracker ~/.local/share/tracker

# Move xfce keyboard shortcuts
cp xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

# Purge everything else and bluetooth
sudo apt purge rhythmbox gnome-contacts gnome-mahjongg gnome-mines gnome-sudoku gnome-music gnome-maps gnome-photos gnome-weather gnome-documents rhythmbox empathy evolution aisleriot brasero* gedit simple-scan gnome-calendar thunderbird blueman bluez-utils bluez bluetooth

# TLP PPA
sudo add-apt-repository ppa:linrunner/tlp -y

# KeepassXC PPA
sudo add-apt-repository ppa:phoerious/keepassxc -y

sudo apt update 
sudo apt upgrade

sudo apt install keepassxc vim terminator

# done
sudo apt-get clean
sudo apt-get autoremove
