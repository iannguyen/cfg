#!/bin/bash
clear

echo "============================================================"
echo "Installing Apps"
echo "============================================================"

echo "============================================================"
echo "GRUB CUSTOMIZER"
echo "============================================================"
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer -y

echo "============================================================"
echo "UNITY TWEAK TOOL"
echo "============================================================"
sudo apt install unity-tweak-tool -y

echo "============================================================"
echo "GNOME TWEAK TOOL"
echo "============================================================"
sudo apt install gnome-tweak-tool -y

echo "============================================================"
echo "REDSHIFT"
echo "============================================================"
sudo apt install redshift redshift-gtk -y

echo "============================================================"
echo "IMWHEELRC"
echo "============================================================"
sudo apt install imwheel -y
ln -sf ~/Desktop/cfg/linux/.imwheelrc

echo "============================================================"
echo "TOUCHPAD INDICATOR"
echo "============================================================"
sudo add-apt-repository ppa:atareao/atareao
sudo apt update
sudo apt install touchpad-indicator

echo "============================================================"
echo "INSTALLING GNOME TERMINAL"
echo "============================================================"
# sudo apt install gnome-terminal -y


