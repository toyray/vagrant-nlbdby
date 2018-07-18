# Clone Nlbdby repo
cd ~
git clone https://github.com/toyray/nlbdby.git nlbdby

# Setup RVM in single user mode
curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
rvm install `cat ~/nlbdby/.ruby-version`

# Setup Ruby and gems
cd ~/nlbdby
bundle install
gem install teamocil

# Update database config
sed -i 's/password\:/password\: root/g' ~/nlbdby/config/database.yml
rake db:create
rake db:migrate

# Create log file for import errors
touch log/import_error.log