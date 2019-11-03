# Disable Trackers
tracker daemon -t
cd ~/.config/autostart
cp -v /etc/xdg/autostart/tracker-* ./
for FILE in `ls`; do echo Hidden=true >> $FILE; done
rm -rf ~/.cache/tracker ~/.local/share/tracker

# Purge everything else and bluetooth
sudo apt purge rhythmbox gnome-contacts gnome-mahjongg gnome-mines gnome-sudoku gnome-music gnome-maps gnome-photos gnome-weather gnome-documents rhythmbox empathy evolution aisleriot brasero* gedit simple-scan gnome-calendar thunderbird blueman bluez-utils bluez bluetooth

sudo apt update 
sudo apt upgrade

sudo apt install keepassxc vim gnome-tweak-tool

# done
sudo apt-get clean
sudo apt-get autoremove
