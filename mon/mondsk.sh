#!/bin/bash
# mondsk.sh - Monitoramento de uso de disco

THRESHOLD=70
EMAIL="admin@example.com"

USED_DSK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USED_DSK" -gt "$THRESHOLD" ]; then
    echo "Uso de disco acima de ${THRESHOLD}%: ${USED_DSK}%" | mail -s "Alerta: Disco Cheio" "$EMAIL"
fi
