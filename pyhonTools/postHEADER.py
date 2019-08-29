import requests
#web=input(str('|-[+] URL de la web: '))
web='https://imoveis.uci.pt/836/portimao-venda/pt/'
s=requests.post(web, data={'ctl00 $ ContentPlaceHolder1 $ txt_idade&quot':'%27'})
r=requests.get(web)
r=r.headers
print(f'\t|-[+] Respuesta:\n\t\t|-[!] {r}')
