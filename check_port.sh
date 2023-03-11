!#/bin/bash

server_ip=localhost
server_port=443

echo $server_ip
echo $server_port

if (echo >/dev/tcp/$server_ip/$server_port) &>/dev/null
then
  echo "port is open ..."
else
  echo "lets go for run tunnel"
  ssh -L 0.0.0.0:443:$server_ip:$server_port -N -f root@$server_ip
fi