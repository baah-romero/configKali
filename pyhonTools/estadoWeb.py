import requests
def state(a):
    r=requests.get(a)
    r.status_code
    print(f'\n\t|-[+] Código de estado del servidor: {r}')
