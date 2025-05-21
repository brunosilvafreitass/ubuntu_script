#!/bin/bash

# Atualiza os pacotes
apt update

# Instalar Curl
apt install curl -y

# Instalar dependências do Docker
apt install apt-transport-https ca-certificates curl software-properties-common -y

# Adicionar a chave GPG do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adicionar o repositório do Docker
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y

# Instalar o Docker e componentes relacionados
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#Instalar dotnet
add-apt-repository ppa:dotnet/backports -y
apt-get update && \
  apt-get install -y dotnet-sdk-9.0 && \
  apt-get install -y dotnet-sdk-8.0 && \
  apt-get install -y dotnet-sdk-7.0 && \
  apt-get install -y dotnet-sdk-6.0 && \
  apt-get install -y aspnetcore-runtime-9.0 && \
  apt-get install -y aspnetcore-runtime-8.0 && \
  apt-get install -y aspnetcore-runtime-7.0 && \
  apt-get install -y aspnetcore-runtime-6.0
apt install zlib1g

#install dotnet-ef globalmente
dotnet tool install --global dotnet-ef

# Instalar o Flatpak e plugin para GNOME Software
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y

# Adicionar o repositório Flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Flatpak Boxes
#flatpak install flathub org.gnome.Boxes -y
# Flatpak Spotify
flatpak install flathub com.spotify.Client -y

# Instalar Snap para ferramentas de desenvolvimento
snap install rider --classic 
snap install postman 
snap install code --classic
snap install notepad-plus-plus 

# Instalar Fish Shell
apt install fish -y

# Instalar Git
apt install git -y
add-apt-repository ppa:git-core/ppa -y
apt update
apt install gh -y

# Instalar o Fish Shell como o shell padrão para todos os usuários (opcional)
chsh -s /usr/bin/fish $(whoami)

# Instalar o Oh My Fish globalmente sem interromper o script
bash -c 'curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish'

# Instalar o plugin fishbone
#fish -c "omf install fishbone"

# Finalizar com uma mensagem de sucesso
echo "Instalação concluída. O Fish Shell agora está instalado globalmente com Oh My Fish."

# Garantir que o Fish Shell não abra interativamente após a execução do script
echo "Para usar o Fish Shell, basta digitar 'fish' ou reiniciar o terminal."

