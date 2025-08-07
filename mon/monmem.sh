#!/bin/bash
# monmem.sh - Monitoramento de uso de memória

THRESHOLD=70
EMAIL="admin@example.com"

USED_MEM=$(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

if [ "$USED_MEM" -gt "$THRESHOLD" ]; then
    echo "Uso de memória acima de ${THRESHOLD}%: ${USED_MEM}%" | mail -s "Alerta: Memória Alta" "$EMAIL"
fi
