#!/bin/bash
RUTA='/usr/share/nmap/scripts/'
cd /$RUTA
git clone https://github.com/vulnersCom/nmap-vulners.git
git clone https://github.com/scipag/vulscan.git
ls $RUTAvulscan/*.csv
cd $RUTAvulscan/utilities/updater
chmod +x $RUTAvulscan/utilities/updater/updateFiles.sh
./ $RUTAvulscan/utilities/updater/updateFiles.sh
