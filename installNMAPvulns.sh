#!/bin/bash
RUTA='/usr/share/nmap/scripts/'
cd /$RUTA
git clone https://github.com/vulnersCom/nmap-vulners.git
git clone https://github.com/scipag/vulscan.git
ls $RUTA/vulscan/*.csv
cd $RUTA/vulscan/utilities/updater
chmod +x $RUTA/vulscan/utilities/updater/updateFiles.sh
./ $RUTA/vulscan/utilities/updater/updateFiles.sh
