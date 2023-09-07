#!/bin/bash

# Обновляем систему
sudo apt update && sudo apt upgrade -y

# Установка zsh и oh-my-zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Установка Python 3.10
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.10 python3.10-venv python3.10-dev

# Установка nvm, node 18 и npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18

# Установка MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/debian "$(lsb_release -sc)"/mongodb-org/4.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

# Установка PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Установка nginx
sudo apt install -y nginx

# Установка supervisor
sudo apt install -y supervisor
sudo systemctl enable supervisor
sudo systemctl start supervisor

echo "Настройка завершена!"
