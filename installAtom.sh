sudo apt install git gconf2 gconf-service libgtk2.0-0 libudev1 libgcrypt20 libnotify4 libxtst6 libnss3 python gvfs-bin xdg-utils libcap2
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom
echo "ATOM Instalado!!!"
echo "Se procede a instalar los paquetes..."
apm install emmet
echo "[*] Emmet Instalado (1/9)"
apm install emmet-simplified
echo "[*] Emmet-Simplified Instalado (2/9)"
apm install minimap
echo "[*] Minimap Instalado (3/9)"
apm install minimap-pigments
echo "[*] Minimap-Pigments Instalado (4/9)"
apm install minimap-find-and-replace
echo "[*] Minimap-Find-And-Replace Instalado (5/9)"
apm install minimap-cursorline
echo "[*] Minimap-Cursorline Instalado (6/9)"
apm install minimap-bookmarks
echo "[*] Minimap-Bookmarks Instalado (7/9)" 
apm install minimap-hide
echo "[*] Minimap-hide Instalado (8/9)"
apm install minimap-git-diff
echo "[*] Minimap-Git-Diff Instalado (9/9)"
echo "Final de la Instalación!!!"

