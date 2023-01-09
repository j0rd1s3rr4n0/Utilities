import cmd
import os
import platform
import colorama
import shutil
import datetime
import random
import hashlib
import time

sysos = platform.system()
if sysos =='Windows':
  clear_scr = lambda: os.system('cls')
elif sysos =='Linux' or 'Darwin':
  clear_scr = lambda: os.system('clear')


# Clase que representa un simulador de terminal
class TerminalSimulator(cmd.Cmd):
    # Mensaje de bienvenida que se muestra al iniciar el simulador de terminal
    intro = 'Arch Linux strongly advises you not to run commands as the root user, who has\nthe highest privileges on the system. Doing so may cause major damages\nto the system. Please note that if you choose to proceed, all consequences are\nat your own risk.\n'
    logger_file = f'C:\\Users\\{os.getlogin()}\\AppData\\Local\\Temp\\logger.log'
    ip = "-"
    port = "-"

    def registrar(self,comando):
        with open(self.logger_file, 'a') as f:
            f.write(f'[{datetime.datetime.now()}] {self.prompt}${comando}\n')
    def print_random_login_password(self):
        num_prints = random.randint(0, 2)
        for i in range(num_prints):
            print(f"{os.getlogin()}@{self.random_ip()}'s password: ",end="")
            time.sleep(random.randint(2, 3))
            print("")
            print(f"Permission denied, please try again.")

    def connect_sv(self):

        print(f'{os.getcwd()}>ssh {os.getlogin()}@{self.random_ip()} -p {self.random_port()}')
        time.sleep(2)
        print(f"""The authenticity of host \'[{self.random_ip()}]:{self.random_port()} ([{self.random_ip()}]:{self.random_port()})\' can\'t be established.
ED25519 key fingerprint is SHA256:+{self.generar_sha256(self.random_cadena())}.
This host key is known by the following other names/addresses:
    C:\\Users\\{os.getlogin()}/.ssh/known_hosts:1: [{platform.node()}]:{self.random_port()}
Are you sure you want to continue connecting (yes/no/[fingerprint])? """,end="")
        time.sleep(2)
        print(f'yes',end="\n")
        time.sleep(1.1)
        print(f'Warning: Permanently added \'[@{self.random_ip()}]:{self.random_port()}\' (ED25519) to the list of known hosts.')
        self.print_random_login_password()
        time.sleep(2.5)
        print(f'{os.getlogin()}@{self.random_ip()}\'s password:',end="\n\n")
        time.sleep(2.1)

#         print(f"""
# C:\\Users\\{os.getlogin()}>ssh {os.getlogin()}@{self.random_ip()} -p {self.random_port()}

# The authenticity of host \'[@{self.random_ip()}]:{self.random_port()} ([@{self.random_ip()}]:{self.random_port()})\' can\'t be established.
# ED25519 key fingerprint is SHA256:+{self.generar_sha256(self.random_cadena())}.
# This host key is known by the following other names/addresses:
#     C:\\Users\\{os.getlogin()}/.ssh/known_hosts:1: [{platform.node()}]:{self.random_port()}
# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes

# Warning: Permanently added \'[@{self.random_ip()}]:{self.random_port()}\' (ED25519) to the list of known hosts.
# {os.getlogin()}@{self.random_ip()}\'s password:
# Permission denied, please try again.
# {os.getlogin()}@{self.random_ip()}\'s password:
# Permission denied, please try again.
# {os.getlogin()}@{self.random_ip()}\'s password:
# Arch Linux strongly advises you not to run commands as the root user, who has
# the highest privileges on the system. Doing so may cause major damages
# to the system. Please note that if you choose to proceed, all consequences are
# at your own risk.""")
    
    def random_cadena(self):
        ws = [str(random.randint(0, 255)) for _ in range(265)]
        ws = ''.join(ws)
        return ws

    def generar_sha256(self, cadena):
        hash_object = hashlib.sha256(cadena.encode())
        return hash_object.hexdigest()

    # Método para cambiar de directorio
    def do_cd(self, path):
        # Intentamos cambiar de directorio
        try:
            os.chdir(path)
        except Exception as e:
            print(e)

        # Actualizamos el prompt con el nuevo directorio
        self.actualizar_prompt()

        # Escribimos el comando y el resultado en el archivo de registro
        self.registrar('cd')

    # Método para mostrar el directorio actual
    def do_pwd(self, _):
        # Mostramos el directorio actual por pantalla
        print(os.getcwd())

        # Escribimos el comando y el resultado en el archivo de registro
        self.registrar('pwd')

    
    def do_cls(self, _):
        # Mostramos el directorio actual por pantalla
        if sysos == 'Windows':
            clear_scr()
        # Escribimos el comando y el resultado en el archivo de registro
        self.registrar('cls')

    # Método para mostrar los elementos del directorio actual
    def do_dir(self, _):
        # Obtenemos el ancho de la terminal
        ancho_terminal = shutil.get_terminal_size().columns

        # Obtenemos la lista de elementos del directorio actual
        elementos = os.listdir('.')

        # Calculamos cuántos elementos caben en una línea
        elementos_por_linea = ancho_terminal // (max([len(e) for e in elementos]) + 1)

        # Mostramos los elementos por pantalla
        for i, elemento in enumerate(elementos):
            print(elemento, end=' ')
            if (i + 1) % elementos_por_linea == 0:
                print()
        # Escribimos el comando y el resultado en el archivo de registro
        self.registrar('dir')

    # Método para salir del simulador de terminal
    def do_exit(self, _):
        # Escribimos el comando en el archivo de registro
        self.registrar('exit')
        return True

    def random_ip(self):
        
        if(self.ip == '-'):
            # Generamos 4 números aleatorios entre 0 y 255, que representan los 4 octetos de la dirección IP
            octetos = [str(random.randint(0, 255)) for _ in range(4)]
            self.ip = '.'.join(octetos)
            # Unimos los octetos con puntos y devolvemos la dirección IP resultante
            return '.'.join(octetos)
        else:
            return self.ip
    
    def random_port(self):
        if(self.port == '-'):
            p = [str(random.randint(1,65535))]
            self.port = ''.join(p)
            return ''.join(p)
        else:
            return self.port
    
    def actualizar_prompt(self):
        self.usuario = os.getlogin()
        #self.equipo = platform.node()
        self.equipo = self.random_ip()
        self.path_actual = os.getcwd()
        # Prompt que se muestra al iniciar el simulador de terminal
        self.prompt = colorama.Fore.RED+f'{self.usuario}'+colorama.Style.RESET_ALL+colorama.Fore.LIGHTMAGENTA_EX+'@'+colorama.Style.RESET_ALL+colorama.Fore.BLUE+f'{self.equipo}'+colorama.Style.RESET_ALL+colorama.Fore.WHITE+':'+colorama.Style.RESET_ALL+colorama.Fore.YELLOW+f'{self.path_actual}'+colorama.Style.RESET_ALL+colorama.Fore.MAGENTA+'$'+colorama.Style.RESET_ALL+' '

# Función que inicia el simulador de terminal
def iniciar_simulador():
    #Inicializa Colorama, permitiendo asi a partir de este momento el uso de las sintais al imprimir cualquier cosa por pantalla
    colorama.init()
    # Creamos una instancia del simulador de terminal y ejecutamos el bucle de interacción con el usuario
    terminal = TerminalSimulator()
    terminal.actualizar_prompt()
    terminal.connect_sv()
    terminal.cmdloop()

# Llamamos a la función que inicia el simulador de terminal
try:
    iniciar_simulador()
except KeyboardInterrupt:
    pass
