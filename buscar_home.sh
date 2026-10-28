#!/bin/bash

# Uso: bash buscar_home.sh <palabra> <carpeta>
if [ $# -lt 2 ]; then
    echo "Uso: bash buscar_home.sh <palabra> <carpeta>"
    exit 1
fi

palabra="$1"
carpeta="$2"

if [ ! -d "$carpeta" ]; then
    echo "La carpeta '$carpeta' no existe."
    exit 1
fi

echo "Buscando '$palabra' en la carpeta '$carpeta'"

# -r busca en subcarpetas, -l muestra solo el nombre del archivo,
# -w busca la palabra completa y --include limita a los .txt
grep -r -l -w --include='*.txt' -- "$palabra" "$carpeta"
