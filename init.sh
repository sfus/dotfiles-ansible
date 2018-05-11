#!/bin/sh

# -> http://blog.serverworks.co.jp/tech/2017/05/22/ansible-for-mac/
# -> https://techte.co/2018/01/22/ansible-mac/

# Xcode command line tools
# $ xcode-select --install

# Xcode license accept
# $ sudo xcodebuild -license accept

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew install python
brew install ansible
