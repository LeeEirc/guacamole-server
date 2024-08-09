#!/bin/sh -e
# 设置 BUILD_DIR 为当前文件的目录 的 父目录
BUILD_DIR="$(dirname "$(readlink -f "$0")")"
BUILD_DIR="$(dirname "$BUILD_DIR")"
cd "$BUILD_DIR"
echo "Building guacamole-server and run guacd"
make && make check && make install
/opt/guacamole/sbin/guacd -b 0.0.0.0 -L debug -f