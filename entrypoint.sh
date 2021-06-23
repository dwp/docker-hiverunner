#!/bin/sh

container_id=$(hostname)
echo $container_id > /etc/hostname
cat > /etc/hosts << EOF
127.0.0.1   localhost $container_id
EOF

mvn test
