url = input()

if "https://" in url:
    resultado = "URL segura"
elif "http://" in url:
    resultado = "URL nao segura"
else:
   resultado = "Formato invalido"
print(resultado)