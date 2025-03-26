# Leer passwd
# Autor: Javier Romero
# Fecha:12-03-2025

files = open('/etc/passwd', 'r')

passwd = files.readlines()

lines = []
for user in passwd:
    line = user.split(":")
    lines.append(line)

userNames = []
for line in lines:
    userNames.append(line[0])

name = input("Dime un usuario: ")

if name in userNames:
    print("Usuario Econtrado")
    ind = userNames.index(name)
    print(passwd[ind])
else:
    print("Usuario no existe")
