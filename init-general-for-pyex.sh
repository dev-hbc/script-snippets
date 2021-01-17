sudo yum update
sudo yum install -y tmux, vim, wget, git, gcc, python3, python3-pip, python3-devel, python-devel
pip3 install virtualenv
pip3 install virtualenvwrapper
pip3 install uwsgi
sudo yum install -y 
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum install -y epel-release
sudo yum install -y mysql-server, nginx
sudo systemctl start mysqld
sudo systemctl start nginx

echo "set -g mode-mouse on" > ~/.tmux.conf
tmux source-file ~/.tmux.conf
