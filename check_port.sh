!#/bin/bash
server_ip=154.91.170.54
server_port=443
if (echo > /dev/tcp/$server_ip/$server_port) &>/dev/null
then
  echo "port is open ..."
else
  echo "lets go for run tunnel"
  ssh -L 0.0.0.0:443:$server_ip:$server_port -N -f root@$server_ip
fi