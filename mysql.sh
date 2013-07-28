yum install libaio
groupadd mysql
useradd -r -g mysql mysql
rm -rf /usr/local/mysql*
tar zxvf mysql-5.6.11-linux-glibc2.5-x86_64.tar.gz -C /usr/local/
ln -s /usr/local/mysql-5.6.11-linux-glibc2.5-x86_64 /usr/local/mysql
cd /usr/local/mysql
chown -R mysql .
chgrp -R mysql .
scripts/mysql_install_db --user=mysql
chown -R root .
chown -R mysql data
cp support-files/my-default.cnf /etc/my.cnf
pwd
./bin/mysqld_safe --user=mysql &
cp support-files/mysql.server /etc/init.d/mysqld
ln -s /usr/local/mysql/include/* /usr/local/include/
