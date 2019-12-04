git clone https://github.com/jonluca/Anubis.git
cd Anubis
sudo apt-get install python3-pip python-dev libssl-dev libffi-dev
pip3 install anubis-netsec
pip3 install  -r requirements.txt
pip3 install .
echo "Versión instalada de Anubis:"
anubis --version

