# UPDATE
apt-get -qqy update

# SET LOCALE
echo 'LC_ALL="en_US.UTF-8"' > /etc/default/locale
echo 'LANG="en_US.UTF-8"' >> /etc/default/locale
echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale

# POSTGRESQL RELATED
apt-get -qqy install postgresql pgadmin3 postgresql-contrib python-psycopg2

# MONGODB RELATED
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Pin currently installed version
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

# WEBDEV RELATED
apt-get -qqy install python-flask python-sqlalchemy python-django

# PIP RELATED
apt-get -qqy install python-pip  # install pip
pip install bleach
pip install oauth2client
pip install requests==2.8.1
pip install httplib2
pip install redis
pip install passlib
pip install itsdangerous
pip install flask-httpauth
pip install pymongo

# MESSAGE OF THE DAY
vagrantTip="\033[36mThe shared directory is located at \033[04;36m/vagrant\033[0m\n\
\033[36mTo access your shared files: \033[07;36mcd /vagrant\033[0m\n\n\
\033[36mAny issue, send mail to \033[04;36miraquitanfilho@gmail.com\033[0m\033[0m"
echo -e $vagrantTip > /etc/motd
