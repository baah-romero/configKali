import requests
import urllib.request
import time
from bs4 import BeautifulSoup
#b_ip=input('|-[+] Introduce IP: ')
url= 'https://uci.com'
response =requests.get(url)
print(url)
print(f'\t|-[+] Respuesta Servidor: {response}')
response =requests.get(url)
if response != '<Response [200]>':
    url='http://'+b_ip
    print(url)
    response =requests.get(url)
    print(f'\t|-[+] Respuesta Servidor: {response}')
