from ubuntu:14.04
run apt-get update
run apt-get install mysql-client -y
run apt-get install mysql-server -y
env set MYSQL_ROOT_PASSWORD= root
add my1.sql var/lib/mysql
run sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf 
run bash -c "/etc/init.d/mysql start && mysql -u root <var/lib/mysql/my1.sql"
volume mys:/var/lib/mysql/code

