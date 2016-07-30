cd /app/software/nginx-build/nginx-1.9.15
echo '======start build nginx 1.9.15 ========='
patch -p1 < /app/software/nginx-build/nginx_upstream_check_module/check_1.9.2+.patch
echo '======patch end ========='
./configure  --prefix=/app/nginx10 --with-http_stub_status_module --with-pcre=../pcre-8.38 --with-zlib=../zlib-1.2.8 --add-module=../nginx_upstream_check_module --add-module=../nginx-sticky-module
echo '========configure end =================='
make && make install
echo '======nginx-1.9.15 build end ============='