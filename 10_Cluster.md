rver.cnf.bk01
cp server.cnf /etc/my.cnf.d/server.cnf

mysql
show status like 'wsrep_%';


# example
export MARIADB_SELF_NODE="node-01"
export MARIADB_ALL_NODES="node-01,node-02,node-03"

sh update-config.sh

