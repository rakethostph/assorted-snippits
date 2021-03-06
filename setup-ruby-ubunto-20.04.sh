  
#!/bin/bash
# Author name: Ruel Nopal
# Company: Ruel Nopal - IT Consultant.
# url: www.ruelnopal.com
# Installing NginX.
# apt update && apt upgrade

# apt install wget
# run wget https://raw.githubusercontent.com/raketbizdev/code-snippits/master/setup-ruby-ubunto-20.04.sh; sudo chmod 755 setup-ruby-ubunto-20.04.sh; ./setup-ruby-ubunto-20.04.sh

echo "Make sure you are a sudo user"

sudo apt update && apt upgrade
sudo apt install wget
sudo apt install imagemagick
sudo apt install nodejs
echo "checking node version"
node -v
sudo apt install yarn
sudo apt install python
sudo apt install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
systemctl status nginx
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

command curl -sSL https://rvm.io/pkuczynski.asc | sudo gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby
curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm
rvm get stable --autolibs=enable
u="$USER"
usermod -a -G rvm $u
echo "checking version"
rvm version
echo "make sure to install your gemfile ruby version"

rvm install ruby
rvm --default use ruby
ruby --version
gem update --system
echo "Note: I dit not include postgresql or any other dbase so you can freely decide if you want to use separate db"
echo "Deleting Shell files."
sudo rm setup-ruby-ubunto-20.04.sh
