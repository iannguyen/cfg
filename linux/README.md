# Ubuntu Post-Install Things

### Sources
https://www.linux.com/learn/get-started-ubuntu-1604

https://code.tutsplus.com/tutorials/a-linux-developers-setup--cms-22138

https://www.youtube.com/watch?v=ZMUeqpUy-xI

### TLDR
- `chmod +x ./post_install.sh`
- `./post_install.sh`

### Change Appearance Via:
- System Settings > Appearance
- Unity Tweak Tool

### Enable All Repos
- Dash search Software and Updates
- Enable all repos (universe, source code, etc)

### Gdebi Package Manager
- set as default:
  - right-click .deb file > properties

### Additional Drivers
- Dash search Additional Drivers

### Adjust Sound
`alsamixer`

### MISC
- Chrome
  - Download Chrome from web
  - `sudo dpkg -i /path/to/chrome.deb`
  - For missing dependencies: `sudo apt-get install -f`

### Clean Up
- remove unneeded packages
  - `sudo apt-get autoremove`
- clear package cache
  - `sudo apt-get clean`

