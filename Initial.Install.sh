#!/bin/bash

mkdir ~/getmacapps_temp
cd ~/getmacapps_temp

# Installing Chrome
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg

# Installing Handbrake
curl -L -o HandBrake.dmg "http://downloads.sourceforge.net/project/handbrake/0.10.0/HandBrake-0.10.0-MacOSX.6_GUI_x86_64.dmg"
hdiutil mount -nobrowse HandBrake.dmg -mountpoint /Volumes/HandBrake
cp -R "/Volumes/HandBrake/HandBrake.app" /Applications
hdiutil unmount "/Volumes/HandBrake"
rm HandBrake.dmg

# Installing VLC Player
curl -L -o vlc.dmg "http://vlc.mirror.uber.com.au/vlc/2.2.0/macosx/vlc-2.2.0.dmg"
hdiutil mount -nobrowse vlc.dmg -mountpoint /Volumes/vlc
cp -R "/Volumes/vlc/VLC.app" /Applications
hdiutil unmount "/Volumes/vlc"
rm vlc.dmg

# Installing Transmission
curl -L -o Transmission.dmg "https://transmission.cachefly.net/Transmission-2.84.dmg"
hdiutil mount -nobrowse Transmission.dmg
cp -R "/Volumes/Transmission/Transmission.app" /Applications
hdiutil unmount "/Volumes/Transmission"
rm Transmission.dmg

# Installing Adium
curl -L -o Adium.dmg "http://downloads.sourceforge.net/project/adium/Adium_1.5.10.dmg"
hdiutil mount -nobrowse Adium.dmg -mountpoint /Volumes/Adium
cp -R "/Volumes/Adium/Adium.app" /Applications
hdiutil unmount "/Volumes/Adium"
rm Adium.dmg

# Installing Dropbox
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac"
hdiutil mount -nobrowse Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
rm Dropbox.dmg

# Installing Sublime Text 3 Beta
curl -L -o "Sublime Text 3.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"

# Installing FileZilla
curl -L -o Filezilla.app.tar.bz2 "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/3.9.0.6/FileZilla_3.9.0.6_macosx-x86.app.tar.bz2"
tar -zxvf Filezilla.app.tar.bz2
mv FileZilla.app /Applications
rm Filezilla.app.tar.bz2

# Installing GitHub
curl -L -o mac_GitHub.zip "https://central.github.com/mac/latest"
unzip mac_GitHub.zip
mv GitHub.app /Applications
rm mac_GitHub.zip

# Installing Steam
curl -L -O "http://media.steampowered.com/client/installer/steam.dmg"
yes | hdiutil mount -nobrowse steam.dmg -nobrowse > /dev/null
cp -R "/Volumes/Steam/Steam.app" /Applications
hdiutil unmount "/Volumes/Steam"
rm steam.dmg

# Installing The Unarchiver
curl -L -o TheUnarchiver.zip "http://theunarchiver.googlecode.com/files/TheUnarchiver3.9.1.zip"
unzip TheUnarchiver.zip
mv "The Unarchiver.app" /Applications
rm TheUnarchiver.zip
