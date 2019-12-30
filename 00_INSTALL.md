
https://mariadb.com/kb/en/getting-started-with-mariadb-galera-cluster/

# add yum repository
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash

# install
yum install MariaDB-server MariaDB-client galera-4

# prepare log directory
sudo mkdir -p /var/log/mariadb
sudo chown -R mysql:mysql /var/log/mariadb
rm -rf /var/log/mariadb/*

# charcater
```conf:/etc/my.cnf.d/server.cnf
[mariadb]
character-set-server=utf8
```

# 
systemctl start mariadb
mysql
systemctl stop mariadb



