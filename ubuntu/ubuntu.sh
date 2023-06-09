#!/bin/bash -i

cd $HOME

# Update distro
sudo apt update && sudo apt upgrade -y

# Install useful packages and Python dependencies
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
libncurses5-dev libgdbm-dev libnss3-dev -y

# Install Git
sudo apt-get install git -y

# Install Pip
sudo apt install python3-pip -y

# If WSL2, config to use Windows Browser
echo 'export BROWSER="powershell.exe /C start"' >> ~/.bashrc
echo 'export BROWSER="powershell.exe /C start"' >> ~/.bashrc_profile

# Install Pyenv
# Download Pyenv from it's GitHub repo (recommended)
if [ -d "$HOME/.pyenv" ] 
then
    echo "Directory .pyenv already exists... jumping to next step!" 
else
    echo "Baixando .pyenv..." 
    # git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    curl https://pyenv.run | bash
fi

# Setup Pyenv environment variables
echo ' ' >> ~/.bashrc
echo '# Pyenv environment variables' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

# Setup Pyenv initialization
if command -v pyenv >/dev/null;
then
    echo ' ' >> ~/.bashrc
    echo '# Pyenv initialization' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
fi
source ~/.bashrc
source ~/.bashrc_profile

# Install Python desired version
while getopts v: flag
do
    case "${flag}" in
        v) version=${OPTARG};;
    esac
done

# Install Python version defined with flag -v
exec $SHELL & $HOME/linux-setup/ubuntu/install_python.sh -v $version