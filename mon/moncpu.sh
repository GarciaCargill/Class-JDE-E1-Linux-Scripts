#!/bin/bash
# Script para monitorar uso de CPU e enviar alerta se ultrapassar 70%

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
THRESHOLD=70

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo "Alerta: uso de CPU acima de $THRESHOLD% - atual: $CPU_USAGE%" | mail -s "Alerta de CPU" seuemail@dominio.com
fi
