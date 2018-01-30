#!/bin/sh
if [ -z "$HOST_IP" ]; then
  hostNIC=${hostNIC:-eth0}
else
  hostNIC=$(ifconfig | grep -B1 "$HOST_IP" | grep -o "^\w*")
fi

if [ n$1 == nbash ]; then
  echo "Starting shell"
  $*
  exit $?
fi

exec mdns-repeater -f ${options} ${hostNIC} ${dockerNIC}
