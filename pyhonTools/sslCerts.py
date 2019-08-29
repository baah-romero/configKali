import requests
web=input(str('|-[+] URL de la web: '))
s=requests.get(web, verify=True)
print(f'\t|-[+] Respuesta del certificado SSL:\n\t\t|-[!] {s}')
