# mariadb-galera-cluster
# mariadb-galera-cluster
git clone https://github.com/im-bravo/mariadb-galera-cluster.git
cd mariadb-galera-cluster

export MARIADB_SELF_NODE="simba-db-01"
export MARIADB_ALL_NODES="simba-db-01,simba-db-02,simba-db-03"
sh update-config.sh

# first
galera_new_cluster

# second-
systemctl start mariadb

mysql
show status like 'wsrep_%';
