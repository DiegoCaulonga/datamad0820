#Imprime en consola Hello World.
echo "Hello World"
#Crea un directorio nuevo lla mado new_dir.
mkdir new_dir
#Elimina ese directorio.
rm -r new_dir
#Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.

#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.

#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cd lorem
source sed.txt
#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cd lorem
source at.txt;lorem.txt
#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cd -
cd lorem-copy
cat sed.txt | head -n 3
#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat sed.txt | tail -n 3
#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
vim sed.txt
Homo Homini Lupus
"""esc"""
:wq!
#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
cat sed.txt | tail -n 3
#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed "s/et/ET/g" at.txt
#Encuentra al usuario activo en el sistema.
who
#Encuentra dónde estás en tu sistema de ficheros.
pwd
#Lista los archivos que terminan por .txt en la carpeta lorem.
cat lorem | grep ".txt"
#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
cd lorem
cat at.txt | grep "et" 
#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
cat at.txt | grep "et" | wc -l
#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep "et" *



##Bonus 
#Almacena en una variable name tu nombre.
name="diego" 
#Imprime esa variable.
echo $name
#Crea un directorio nuevo que se llame como el contenido de la variable name.
mkdir $name
#Elimina ese directorio.
rmdir $name

#Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. Intenta primero mostrar los archivos mediante un bucle for
for file in $(ls lorem/):
for> echo item$file
#Imprime los ficheros
for file in $(ls lorem/): 
for> echo item$#file
#Imprime las longitudes de los nombres de los ficheros
for file in $(ls lorem/):
for> printf "%s has %s characters length\n" "${#file}"
#Imprime outputs con la siguiente estructura: lorem has 5 characters lenght


#Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
#Usando el comando top o htop
top
#Usando el comando ps con argumentos
ps -e
#Muestra información sobre tu procesador por pantalla
ps aux
#Crea 3 alias y haz que estén disponibles cada vez que inicias sesión

#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz
tar -cvf lorem-compressed.tar lorem lorem-copy
#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed
tar -xzvf lorem-compressed.tar∫