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
# Anotes Adicionales 
# Tabla de lso Tipos de Archivos
# Símbolo	Tipo de archivo	    Descripción
#  d	    directorio	        Un archivo usado para contener otros archivos.
#  -	    archivo ordinario	Incluye archivos leíbles, imágenes, archivos binarios, y archivos comprimidos.
#  l	    enlaces simbólicos	Apunta a otro archivo.
#  s	    socket	            Permite la comunicación entre procesos.
#  p	    tubería (pipe)	    Permite la comunicación entre procesos.
#  b	    archivo bloque	    Usado para comunicaciones con el equipo (hardware).
#  c	    archivo carácter	Usado para comunicaciones con el equipo (hardware).
