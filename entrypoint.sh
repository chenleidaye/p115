#!/bin/bash

set -e

# 如果 cookies 环境变量存在就创建文件
if [ ! -f /data/115-cookies.txt ] && [ -n "$COOKIES" ]; then
  echo "$COOKIES" > /data/115-cookies.txt
fi

exec p115dav \
  --cookies-path /data/115-cookies.txt \
  --fast-strm \
  --only-webdav \
  --check-for-relogin \
  --wsgidav-username-password "${USERNAME_PASSWORD:-admin:admin}" \
  --host 0.0.0.0 \
  --port 8000
