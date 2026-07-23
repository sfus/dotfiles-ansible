#!/bin/sh

# -> http://blog.serverworks.co.jp/tech/2017/05/22/ansible-for-mac/
# -> https://techte.co/2018/01/22/ansible-mac/

# Xcode command line tools
# $ xcode-select --install

# Xcode license accept
# $ sudo xcodebuild -license accept

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew doctor
brew install python@3.14
brew install ansible

# Ansible modules for Homebrew (homebrew / homebrew_tap / homebrew_cask)
# were moved out of ansible-core into the community.general collection.
ansible-galaxy collection install -r requirements.yml
