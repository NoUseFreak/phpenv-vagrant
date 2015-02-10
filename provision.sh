#!/bin/bash

# cleanup for dev
sudo rm -rf /home/vagrant/.phpenv

# Update system and install dependencies
echo "Installing dependencies"
sudo apt-get update >> /dev/null
sudo apt-get install -y git make re2c bison libxml2-dev libssl-dev libbz2-dev libcurl3-dev libdb5.1-dev libjpeg-dev libpng-dev libXpm-dev libfreetype6-dev libt1-dev libgmp3-dev libc-client-dev libldap2-dev libmcrypt-dev libmhash-dev freetds-dev libz-dev libreadline-dev libtidy-dev libxslt-dev autoconf >> /dev/null

# Install phpenv
echo "Installing phpenv"
rm -rf /tmp/phpenv
git clone https://github.com/CHH/phpenv.git /tmp/phpenv >> /dev/null
/tmp/phpenv/bin/phpenv-install.sh  >> /dev/null

echo "export PATH=\"/home/vagrant/.phpenv/bin:\$PATH\"" >> ~/.bashrc
echo "eval \"$(phpenv init -)\"" >> ~/.bashrc

export PATH="/home/vagrant/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# Install php-build
echo "Installing php-build"
git clone git://github.com/CHH/php-build.git ~/.phpenv/plugins/php-build >> /dev/null

rm -rf /tmp/phpenv