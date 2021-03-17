#! /bin/bash

echo "Enter ip: "
read ip
echo "Enter port: "
read port

timeout 1 bash -c "echo >/dev/tcp/$ip/$port" &&
    echo "port $port is open" ||
    echo "port $port is closed"