my_internal_ip_address() {
    # /sbin/ip -o -4 addr list ens4 | awk '{print $4}' | cut -d/ -f1
    hostname -I
}

create_config_file() {
    # edit
    cat template.server.cnf | sed "s/MARIADB_SELF_NODE_NAME/$MARIADB_SELF_NODE_NAME/g" | sed "s/MARIADB_SELF_NODE_ADDRESS/$MARIADB_SELF_NODE_ADDRESS/g" | sed "s/MARIADB_ALL_NODES/$MARIADB_ALL_NODES/g" > server.cnf
    diff template.server.cnf server.cnf
}

export MARIADB_SELF_NODE_NAME=${MARIADB_SELF_NODE}
export MARIADB_SELF_NODE_ADDRESS=`hostname -I | tr -d ' '`

echo "MARIADB_SELF_NODE_NAME:$MARIADB_SELF_NODE_NAME"
echo "MARIADB_SELF_NODE_ADDRESS:$MARIADB_SELF_NODE_ADDRESS"


# backup
cp /etc/my.cnf.d/server.cnf /etc/my.cnf.d/server.cnf.bk02
create_config_file
# replace
cp server.cnf /etc/my.cnf.d/server.cnf




