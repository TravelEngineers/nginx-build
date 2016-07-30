
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/app/nginx10/sbin/nginx -t

	kill -USR2 `cat /app/nginx10/logs/nginx.pid`
	sleep 1
	test -f /app/nginx10/logs/nginx.pid.oldbin

	kill -QUIT `cat /app/nginx10/logs/nginx.pid.oldbin`
