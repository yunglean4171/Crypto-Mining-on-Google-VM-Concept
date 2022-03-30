#!/bin/bash
t_min=45
t_max=120
cpu_min=5
cpu_max=40

while true :
  do
    echo "_________________________________________________"
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))
    echo "Max CPU usage drawed:" $cpu
    echo "Starting mining software with timeout:" $t
    timeout $t sudo ./xmrig -o gulf.moneroocean.stream:10128 -u WALLET-ADRESS -p gc --max-cpu-usage=$cpu >/dev/null &
    sleep $t
done