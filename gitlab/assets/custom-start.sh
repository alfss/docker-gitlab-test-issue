#!/bin/bash

set -e

sleep 1

CONFD_BACKEND="${CONFD_BACKEND:-env}"
CONFD_ETCD_NODE="${CONFD_ETCD_NODE:-http://127.0.0.1:4001}"

echo "Run confd"

if [ "$CONFD_BACKEND" = "etcd" ]; then
  confd -onetime -backend etcd -node http://127.0.0.1:4001
else
  confd -onetime -backend env
fi

echo "Copy static for nginx"
mkdir -p /var/opt/gitlab-public
cp -r /opt/gitlab/embedded/service/gitlab-rails/public/* /var/opt/gitlab-public/

echo "Run wrapper"
/assets/wrapper
