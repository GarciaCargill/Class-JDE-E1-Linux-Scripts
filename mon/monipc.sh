#IPC Monitoring
#Jose Eduardo Garcia
#26-07-2023

#!/bin/bash
cd /opt/jde920/jdedwardsppack/e920/log
MSG=$(grep 'NET2000002' -R -i --include=*.log * | awk '{print $1}' | uniq)
if [ "$MSG" != "" ]
then
   echo $HOSTNAME : localizado erro NET2000002 eIPCTimedOut nesse log:$MSG - Verificar URGENTE!| mailx -s "erro NET2000002 eIPCTimedOut" CNC-WIPRO@CARGILL.COM
#else	
#   echo $HOSTNAME IPC Ok
fi

