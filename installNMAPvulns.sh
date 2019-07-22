#!/bin/bash
RUTA='/usr/share/nmap/scripts/'
cd /usr/share/nmap/scripts/
git clone https://github.com/vulnersCom/nmap-vulners.git
git clone https://github.com/scipag/vulscan.git
ls $RUTA/vulscan/*.csv
cd $RUTA/vulscan/utilities/updater
chmod +x updateFiles.sh
./updateFules.sh
