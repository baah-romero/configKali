import requests
web=input(str('|-[+] URL de la web: '))
s=requests.put(web, data={}rue)
print(f'\t|-[+] Respuesta del certificado SSL:\n\t\t|-[!] {s}')
