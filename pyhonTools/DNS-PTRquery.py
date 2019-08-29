import dns.resolver
ip=input('|-[+] Introducir IP: ')
req='.'.join(reversed(ip.split(".")))+".in-addr.arpa"
myResolver = dns.resolver.Resolver()
myAnswer = myResolver.query(req, "PTR")
for rdata in myAnswer:
    print(f'\t|-[+] {rdata}')
print('------\nFIN DE LA EJECUCIÓN\n-------')
