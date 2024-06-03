#!/bin/sh

cd /q2

tar -xvzf backup.tar.gz

find . -type f -exec chmod 0664 {} +

find . -type d -exec chmod 0775 {} +

sudo chown -R anonymous:no-team .

tar -czvf /tmp/fixed-archive.tar.gz .
