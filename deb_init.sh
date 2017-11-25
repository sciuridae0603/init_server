echo Init server script (for debian like dist)

echo ### apt update
apt update

echo ### apt upgrade
apt upgrade

echo ### apt dist-upgrade
apt dist-upgrade

echo ### apt install openssh-server nload htop git python3-pip python-pip iftop zip unzip zsh tmux curl wget
apt install openssh-server nload htop git python3-pip python-pip iftop zip unzip zsh tmux curl wget

echo ### mkdir .ssh
mkdir ~/.ssh
chmod 700 ~/.ssh

echo ### add public key
curl https://sciuridae.me/key.pub > ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

echo ### install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

