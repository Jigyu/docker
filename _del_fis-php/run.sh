#!/bin/bash


# 启动 supervisord
service supervisord start
# 启动 sshd
service sshd start

# outpu log
tail -F /home/work/_logs/supervisord/supervisord.log \
		/root/.fis3-tmp/www/app.log \
		/root/.fis3-tmp/www/server.log
