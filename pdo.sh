rm -rf PDO_MYSQL-1.0.2
tar xzvf PDO_MYSQL-1.0.2.tgz
cd PDO_MYSQL-1.0.2
/usr/local/php5/bin/phpize
./configure --with-php-config=/usr/local/php5/bin/php-config --with-pdo-mysql=/usr/local/mysql
make
make install
