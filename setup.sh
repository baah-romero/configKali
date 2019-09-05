#!/bin/bash
mkdir Repos
cd Repos
git clone https://github.com/baah-romero/hybridPasswordCracker.git &
echo "|-[+] Clonado Repositorio HybridPasswordCracker"
git clone https://github.com/baah-romero/configKali.git &
echo "|-[+] Clonado Repositorio configKali"
cd configKali
chmod +x installDocker.sh
chmod +x installNMAPvulns.sh
echo "|--> Instalando Docker!!"
./installDocker.sh &
echo "|---> Instalado DOCKER!!!!"
echo "|--> Instalando NMAP Vulners Scann!"
./installNMAPvulns.sh &
echo "|--> Instalado NMAP Vulners Scann"
sleep 10
clear
echo "RESUMEN DE LA INSTALACIÓN:"
echo "--------------------------------------------------------------------------"
echo "|-> Instalado DOCKER!"
echo "|---> Ejecutar DVWA (~/dvwaDocker.sh)"
echo "|---> Ejecutar WACKOPIKO (~/wackoDocker.sh)"
ls ~/ | grep *Docker.sh
echo "|"
echo "|-> Instalado NMAP VULNERABLITY SCANNER!"
echo "|---> Directorio del scrip: /usr/share/nmap/scripts/vulscan/"
ls /usr/share/nmap/scripts/vulscan/
echo "|--[!] Forma de ejecutar el script: "
echo "|   |--[!] nmap -sV --script=nmap-vulscan <targetIP> [-p <portList>]"
echo "|"
echo "|-> Clonado Repositorio hybridPasswordCracker!"
echo "|---> Ubicación: ~/Repos/hybridPasswordCracker"
echo "|---> Ejecución: pyhton3 hpcp.py"
echo "-----------------------------------------------------------------------------"
echo "Disfruta Hackeando!"
