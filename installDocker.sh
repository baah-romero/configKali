#!/bin/bash
DIRECT=/home
DOT=/CEHv10
DOCK=/docker
DIR1=$DIRECT$DOT$DOCK
DIR2=$DIRECT$DOT

echo "Iniciando instalación docker..."
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo 'deb https://download.docker.com/linux/debian stretch stable' > /etc/apt/sources.list.d/docker.list
echo "|-[++--------] 20% completado. Añadidos los certificados para Docker."
apt-get update
echo "|-[+++++++---] 30% completado. Actualizados los repositorios. Inicia instalación."
apt-get install -y docker-ce
echo "|-[+++++-----] 50% completado. Docker instalado."
docker pull citizenstig/dvwa
echo "|-[++++++----] 60% completado. Instalado Docker citizenstig/dvwa"
docker pull adamdoupe/wackopicko
echo "|-[+++++++---] 70% completado. Instalado Docker adamdoupe/wackopicko"

if [ -d "$DIR2" ] #Comprobar que existe la ruta /home/CEHv10
 then
	cd $DIR2	 
else
	cd $DIRECT
	if [ -d "$DIRECT$DOT" ] #Comprobar que exista directorio /CEHv10 en /home
		then
			cd $DIR2 #Acceder si existe
	else	
		mkdir $DIR2 && cd $DIR2
	fi
	
fi
if [ -d "$DIR2$DOCK" ] #Comprobar /home/CEHv10/docker
 then
	cd $DIR1
else
	mkdir "$DIR2$DOCK"
	cd $DIR1
fi

echo "|-[+++++++---] 75% completado. Ruta /home/CEHv10/docker CREADA!"
echo "Se procede a crear los ficheros dvwaDocker.sh y wackoDocker.sh"

	echo '#!/bin/bash' > $DIR1/dvwaDocker.sh 
	echo 'docker run -p 127.0.0.1:9000:80 -it citizenstig/dvwa' >> $DIR1/dvwaDocker.sh 
	echo '#!/bin/bash' > $DIR1/wackoDocker.sh 
	echo 'docker run -p 127.0.0.1:8000:80 -it adamdoupe/wackopicko' >> $DIR1/wackoDocker.sh
echo "|-[++++++++--] 80% completado. Creados los ficheros dvwaDocker.sh y wackoDocker.sh"
	chmod +x $DIR1/dvwaDocker.sh && chmod +x $DIR1/wackoDocker.sh
echo "|-[+++++++++-] 90% completado. Concedidos los permisos de ejecución para dvwaDocker.sh y wackoDocker.sh"
	ln -s $DIR1/dvwaDocker.sh ~/dvwaDocker.sh
	ln -s $DIR1/wackoDocker.sh ~/wackoDocker.sh 
echo "|-[++++++++++] 100% completado."
echo "Creados los enlaces para ejectar dvwaDocker.sh y wackoDocker.sh desde la raiz."
cd ~
