

create_config_file() {
    # edit
    cat template.server.cnf | sed "s/MARIADB_SELF_NODE/$MARIADB_SELF_NODE/g" | sed "s/MARIADB_ALL_NODES/$MARIADB_ALL_NODES/g" > server.cnf
    diff template.server.cnf server.cnf
}


# backup
cp /etc/my.cnf.d/server.cnf /etc/my.cnf.d/server.cnf.bk02
create_config_file
# replace
cp server.cnf /etc/my.cnf.d/server.cnf
