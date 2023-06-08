# Initialize Pacman keyring
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy archlinux-keyring
sudo pacman -Su

# General updates/upgrades
sudo apt update && sudo apt upgrade -y

# Instalando o gerenciador de pacotes YAY (https://github.com/Jguer/yay)
sudo pacman -S --needed git base-devel
cd /tmp
git clone https://aur.archlinux.org/yay.git
makepkg -si
cd


sudo pacman -S --needed openssl zlib xz tk

# Instalando outros  pacotes necessários
sudo pacman -S exa
sudo pacman -S bat

# Javascript
# sudo pacman -S yarn npm

# Rust
# sudo pacman -S rust
# cargo install exa bat procs dust tokei ytop tealdeer grex rmesg zoxid

# Instalando o ZSH
yay -S zsh
chsh -s /usr/bin/zsh

# Instalando o Power Level 10k
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Instalando o ASDF para gerenciamento de pacotes de diversas linguagens 
yay -S asdf-v
#source /opt/asdf-vm/asdf.sh (adicionar a linha no .zshrc)

# Configurando o ASDF
asdf plugin add python
asdf list-all python
asdf install python 3.9.7
asdf global python 3.9.7

# Instalando o Heroku CLI
yay -S heroku-cli







