import requests
import estadoWeb

web=input(str('|-[+] URL de la web: '))
s=requests.get(web)
estadoWeb.state(web)
sendHead=s.request.headers #Cabeceras enviadas
headers=s.headers #Cabeceras RESPONSE del Servidor
print(f'\t|-[+] HEADERS HTTP enviados:\n\t\t|-[!] {sendHead}')
print('------------------------------------------------------------------------')
print(f'\t|-[+] Respuesta HEADERS HTTP de {web}:\n\t\t|-[!] {headers}')
