
#!/bin/bash
clear

echo "============================================================"
echo "INSTALLING RBENV"
echo "============================================================"
brew install rbenv ruby-build

echo "============================================================"
echo "INSTALLING RUBY"
echo "============================================================"
rbenv install 2.4.2 --verbose
rbenv global 2.4.2

