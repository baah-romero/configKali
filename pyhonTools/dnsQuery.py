import dns.resolver
myResolver = dns.resolver.Resolver()
dirFichero='/root/Repos/pythonTools/dominios.txt'
with open(dirFichero, 'r') as reader:
    for line in reader:
        print('\n\n|----------------------------------------------------|')
        print(f'|-[+] Dominio a comprobar: {line}')
        print('--------------| Registros Name Server |-----------')
        line=line[:-1]
        myAnswer = myResolver.query(line, "NS")
        for rdata in myAnswer:
            print(f'|-[+] {rdata}')
        print('--------------| Registros SMTP |-----------')
        myAnswer = myResolver.query(line, "MX")
        for rdata in myAnswer:
            print(f'|-[+] {rdata}')
        print('-------cd -------| Registros tipo A |-----------')
        myAnswer = myResolver.query(line, "A")
        for rdata in myAnswer:
            print(f'|-[+] {rdata}')
        print(f'------\nFIN DE LA EJECUCIÓN para {line}\n-------')
