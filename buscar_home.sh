#!/bin/bash

# $1 es la palabra a buscar y $2 es la carpeta donde buscar.
echo "Buscando $1 en la carpeta $2"

grep -l -w "$1" "$2"/*.txt
