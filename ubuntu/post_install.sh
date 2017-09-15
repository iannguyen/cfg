#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"

echo "============================================================"
echo "RUNNING APT UPDATE"
echo "============================================================"
sudo apt-get update -y
sudo apt update -y

echo "============================================================"
echo "RUNNING APT UPGRADE"
echo "============================================================"
sudo apt upgrade -y

echo "============================================================"
echo "RUNNING APT DIST-UPGRADE"
echo "============================================================"
sudo apt dist-upgrade -y

echo "============================================================"
echo "INSTALLING GDEBI"
echo "============================================================"
sudo apt install gdebi -y

echo "============================================================"
echo "INSTALLING VLC"
echo "============================================================"
sudo apt install vlc -y

echo "============================================================"
echo "INSTALLING UNITY-TWEAK-TOOL"
echo "============================================================"
sudo apt install unity-tweak-tool -y

echo "============================================================"
echo "INSTALLING GNOME-TWEAK-TOOL"
echo "============================================================"
sudo apt install gnome-tweak-tool -y

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean

