#!/bin/bash -uxe

VERSION=2.7.14.2717
BUILD=404899
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.12-${BUILD}

# make directory
mkdir -p /opt/bin
cd /opt

wget http://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python /opt/bin/python
ln -sf /opt/python/bin/python /opt/bin/python2
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
