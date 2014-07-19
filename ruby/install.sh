#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi

#Install Pow Server
echo "  Installing Pow"
curl get.pow.cx | sh > /tmp/pow-install.log

#Install some gems
echo "  Installing some gems"
gem install powder
gem install cloudapp
gem install maid

#Configuration some tools for ios development
echo "  Installing some gems for ios development"
gem install cocoapods
gem install shenzhen