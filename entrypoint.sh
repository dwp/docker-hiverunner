#!/bin/sh

container_id=$(hostname)
cat > /etc/hosts << EOF
127.0.0.1   localhost $container_id
EOF
mvn test
