#DB Connection Monitoring
#Jose Eduardo Garcia
#02-04-2024

#!/bin/bash
cd /opt/jde920/jdedwardsppack/e920/log
MSG=$(grep 'JDB9900255' -R -i --include=*.log * | awk '{print $1}' | uniq)
if [ "$MSG" != "" ]
then
   echo $HOSTNAME : localizado erro _JDB9900255 Database connection has been lost_ nesse log: $MSG - Verificar URGENTE!| mailx -s "erro JDB9900255 Database connection has been lost" CNC-WIPRO@CARGILL.COM
#else	
#   echo $HOSTNAME No DB connection issues
fi

