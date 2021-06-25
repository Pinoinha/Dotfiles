#!/bin/bash

# A Random xkcd comic in your shell
# A webcomic of romance, sarcasm, math, and language: https://xkcd.com/
# xkcd comic is published under CC-by-nc 2.5 license
# Script published under CC-by-sa license
# Desarrollado por Victorhck: https://victorhckinthefreeworld.com
 
# Obtener la tira aleatoria de xkcd
curl -sL https://c.xkcd.com/random/comic/ > /tmp/xkcd

# Extraemos la url de la tira
url=$(grep hotlinking /tmp/xkcd | cut -d " " -f 5)

# Extraemos el nombre de la tira
nombre=$(echo $url | cut -d "/" -f 5)

# Descargamos la tira y la guardamos en /tmp con su nombre
wget -q "$url" -O /tmp/$nombre

# Extraemos el texto "alt" que acompaña la imagen y que muchas veces complementa la propia tira
grep "$nombre" "/tmp/xkcd" | awk -F= '{printf $3}' | sed 's/" alt/"/' | sed 's/&#39;/`/g' | sed 's/&quot/"/g' | sed 's/^. /\n/g' > "/tmp/xkcd.txt"

# Mostramos la tira a pantalla completa sin marco y mostrando el texto "alt"
#feh -xFd /tmp/$nombre --draw-tinted --info "cat /tmp/xkcd.txt"
sxiv /tmp/$nombre "cat /tmp/xkcd.txt"

# Borramos el archivo con la tira
rm /tmp/$nombre
