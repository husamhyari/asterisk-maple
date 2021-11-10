#!/bin/bash
sudo apt update
sudo apt upgrade


wget  https://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-11.25.3.tar.gz

tar -xvzf  asterisk-11.25.3.tar.gz
cd asterisk-11.25.3
sudo apt install build-essential ncurses-dev libxml2-dev libsqlite3-dev -y
sudo bash ./configure
sudo make
sudo make install
sudo make samples
sudo make config
sudo ldconfig

echo Done!
