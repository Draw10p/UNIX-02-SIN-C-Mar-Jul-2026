1. ls # This returns a list of the files in the current directory.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2. aptitude moo # This command is a package management feature available in some versions of Linux, which accepts “moo” as an argument
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3. ls -l # This lists the contents of a directory in long format and provides detailed information about each file
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4. ls -r # This lists the contents of a directory but displays the results in reverse alphabetical order.
-> ls -l -r / ls -rl / ls -lr # Different ways to use this command, including the -l
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5. aptitude -v  moo # This command uses the -v option to demonstrate how the command's behavior can be modified using its various functions, resulting in different outputs each time it is run.
-> aptitude -v -v moo / aptitude -vv moo # Different ways to use this command
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
6. pwd # This command displays the working directory, including its current location within the file system
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
7. cd # This command is used to change directories and navigate the file system. 
-> cd / # This command takes you directly to the root directory
-> cd .. # This command refers to the directory above the current directory, sometimes called the parent directory. 
-> cd . # This command helps us determine the current directory where the user is located
-> cd ~ # This command helps us return to our home directory at any time
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
8. -t # This command will sort the files by their timestamp
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
9. -s # This command will sort the files by file size
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
10. -r # This command will reverse the sort order of the files, regardless of the sort type.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
11. su #This command allows us to temporarily act as a different user, which will open a new shell as the root user
# Alternatives for using the "su" command 
su -
su -l
su --login
-> sudo # This command can also be used to run a command with administrative privileges, such as the one used by the su 
-> -u # This command is used to specify a different user account
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
12. sl #This command is configured as a steam locomotive, so it requires administrative access to prevent the execution of sensitive or privileged commands.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
13. chmod # This command is used to change the permissions of a file or directory; only the root user or the file's owner can perform this action.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
14 ./ #This indicates that the “command” must be run from the current directory.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Anotes Adicionales 

# Tabla de los Tipos de Archivos
# Símbolo	Tipo de archivo	    Descripción
#  d	    directorio	        Un archivo usado para contener otros archivos.
#  -	    archivo ordinario	Incluye archivos leíbles, imágenes, archivos binarios, y archivos comprimidos.
#  l	    enlaces simbólicos	Apunta a otro archivo.
#  s	    socket	            Permite la comunicación entre procesos.
#  p	    tubería (pipe)	    Permite la comunicación entre procesos.
#  b	    archivo bloque	    Usado para comunicaciones con el equipo (hardware).
#  c	    archivo carácter	Usado para comunicaciones con el equipo (hardware).

# Tabla de Tipos de permisos
#Permiso	                Efectos sobre los Archivos	                                Efectos sobre los Directorios
#leer (read) (r)       	    Permite que el contenido del archivo sea leído o copiado.	Sin el permiso para ejecutar, permite obtener un listado poco detallado de los archivos que contiene el directorio. Con el permiso para ejecutar, ls -l proporciona un listado detallado de archivos.
#escribir (write) (w)	    Permite modificar o reescribir el contenido del archivo.    Permite añadir o eliminar archivos en un directorio.	Para que este permiso funcione, el directorio debe tener permiso para ejecutar.
#ejecutar (execute) (x)	    Permite que un archivo funcione como un proceso, aunque     Permite que el usuario se traslade del directorio si en el directorio padre también posee permiso escribir (write).
#                           archivos script también requerirán el permiso leer (read).	

# Tabla de los Conjuntos de Permisos
# Símbolo	    Significado
# u	Usuario:    El usuario propietario del archivo.
# g	Grupo:      El grupo propietario del archivo.
# o	Otros:      Cualquier otro que no sea el usuario propietario o un miembro del grupo propietario.
# a	Todos:      Se refiere al usuario, grupo, y todos los demás.

# Tabla sobre el tipo de Acción 
# Símbolo	Significado
# +	        Añadir permiso, si es necesario
# =	        Especificar el permiso exacto
# -	        Eliminar el permiso, si es necesario