import sys
import subprocess

order=sys.argv[1]

if order == "crear":
    subprocess.run("mkdir $HOME/BAK", shell=True)

elif order == "borrar":
    subprocess.run("rm -rf $HOME/BAK/*", shell=True)

else:
    print("Orden no encontrada")
    sys.exit()