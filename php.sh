rm -rf php-5.4.15 /usr/local/php5
tar xzvf php-5.4.15.tar.gz
cd php-5.4.15
./configure --prefix=/usr/local/php5 \
--with-curl=/usr/include/ \
--enable-fpm \
--with-config-file-path=/etc/ \
--enable-mbstring \
--enable-ftp \
--with-gd --with-jpeg-dir=/usr \
--with-png-dir=/usr \
--enable-magic-quotes \
--with-mysql=/usr/local/mysql \
--with-pear \
--enable-sockets \
--with-ttf \
--with-freetype-dir=/usr \
--enable-gd-native-ttf \
--with-zlib \
--enable-sysvsem \
--enable-sysvshm \
--with-libxml-dir=/usr \
--enable-force-cgi-redirect \
--enable-fastcgi \
--with-xmlrpc \
--enable-zip \
--enable-fpm

make
make install
cp php.ini-development /etc/php.ini
cp /usr/local/php5/etc/php-fpm.conf.default /usr/local/php5/etc/php-fpm.conf
#echo 'ulimit -SHn 65535' >> /etc/rc.local
#echo '/usr/local/php5/sbin/php-fpm start' >> /etc/rc.local
cp php-5.4.15/sapi/fpm/init.d.php-fpm /usr/local/php5/sbin/fpm
