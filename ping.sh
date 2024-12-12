#!/bin/bash

fecha=$(date +%x)
hora=$(date +%r)
#archtemporal es el archivo de texto donde van a caer los pings de la IP
archtemporal="/home/archtemporal.txt"
#ruta es donde vana caer pings exitosos o no de las direccioones IP
ruta="/home/ruta/del/servidor"
ip=$1; export ip
archivo="$ruta/Monitor-$ip-ping.log"
echo "$ip"
    #Aqui se utiliza el comando ip -c 3 para mandar unicamente tres paquetes a la IP
    ping -c 3 $ip > $archtemporal

if grep "100% packet loss" $archtemporal; then
    echo "$fecha - $hora $ip ping Error" >> $archivo
else
    echo "$fecha - $hora $ip ping EXito" >> $archivo
fi
