sudo apt-get update

# Setup required packages
sudo apt-get -y install software-properties-common tmux vim git nodejs

# Setup MySQL packages
echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
echo "mysql-server-5.5 mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server-5.5 mysql-server/root_password_again password root" | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -y install mysql-server mysql-server-5.5 libmysqlclient-dev