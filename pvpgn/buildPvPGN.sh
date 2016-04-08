#!/bin/bash
# http://harpywar.com/?a=articles&b=2&c=1&d=74&lang=en

WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr/local/pvpgn -D WITH_MYSQL=true -D WITH_LUA=true ../
make
make install

cd $WORKING_DIR
rm -rf pvpgn
