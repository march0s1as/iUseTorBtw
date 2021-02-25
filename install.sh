fVermelho='\033[0;31m'

sudo apt install proxychains
sudo apt install tor
wget https://www.torproject.org/dist/torbrowser/10.0.12/tor-browser-linux64-10.0.12_pt-BR.tar.xz
tar -xvf tor-browser-linux64-10.0.12_pt-BR.tar.xz
sudo cp torr.sh /usr/bin/torr
clear
echo "${fVermelho}Instalação finalizada ! Para rodar o script, digite 'torr' "

