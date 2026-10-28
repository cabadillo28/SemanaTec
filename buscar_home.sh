

# Buscar la palabra home en los archivos de la carpeta textos.
echo "Archivos que contienen la palabra home:"

# -l muestra el nombre del archivo y -w busca la palabra completa.
grep -l -w "home" textos/*.txt
