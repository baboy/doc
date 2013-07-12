rm -rf nginx-1.4.1
tar -xzvf nginx-1.4.1.tar.gz
cd nginx-1.4.1
pwd

./configure \
--prefix=/usr/local/nginx \
--conf-path=/usr/local/nginx/conf/nginx.conf \
--with-http_realip_module \
--with-http_addition_module \
--with-http_gzip_static_module \
--with-http_random_index_module \
--with-http_stub_status_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_flv_module \
--with-pcre \
--with-openssl=/usr/include \
--pid-path=/var/log/nginx/nginx.pid \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--http-fastcgi-temp-path=/var/log/nginx/fastcig_tmp \
--http-proxy-temp-path=/var/log/nginx/proxy_tmp

make 
make install
