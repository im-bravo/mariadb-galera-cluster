# mariadb-galera-cluster
# mariadb-galera-cluster
yum -y install git bind-utils
git clone https://github.com/im-bravo/mariadb-galera-cluster.git
cd mariadb-galera-cluster

```sh
export MARIADB_SELF_NODE="simba-db-01"
# export MARIADB_SELF_NODE="simba-db-02"
# export MARIADB_SELF_NODE="simba-db-03"
export NODE1_HOST="simba-db-01"
export NODE2_HOST="simba-db-02"
export NODE3_HOST="simba-db-03"
```


sh update-config.sh

cat -n /etc/my.cnf.d/server.cnf

# first
galera_new_cluster
systemctl status mariadb

# second-
systemctl start mariadb
systemctl status mariadb

mysql
show status like 'wsrep_%';



