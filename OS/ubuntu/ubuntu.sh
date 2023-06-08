# Atualiza a distro e baixa pacotes necessários
sudo apt update && sudo apt upgrade -y

# Dependências do Python
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
libncurses5-dev libgdbm-dev libnss3-dev -y


sudo apt install python3-pip -y

curl https://pyenv.run | bash

cd $HOME
echo ' ' >> ~/.bashrc
echo '# Pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
cd $HOME
source .bashrc

$HOME/.pyenv/pyenv install 3.9.7