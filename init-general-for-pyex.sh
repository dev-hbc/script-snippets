sudo yum update -y
sudo yum install -y tmux, vim, wget, git, gcc, python3, python3-pip, python3-devel, python-devel
sudo pip3 install virtualenv
sudo pip3 install virtualenvwrapper
sudo pip3 install uwsgi
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum install -y epel-release
sudo yum install -y mysql-server, nginx
sudo systemctl start mysqld
sudo systemctl start nginx

echo "set -g mode-mouse on" > ~/.tmux.conf
# tmux source-file ~/.tmux.conf
