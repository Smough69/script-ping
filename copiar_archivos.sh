#!/bin/bash

compania=$1
fecha=$2
ruta_txt="home/user/UUID"
destino="home/sistemas/doctos/${compania}CFDI"
archivos=$(cat $ruta_txt/*.txt)
ruta_pdf="home/var/www/${compania}CFDI/facturas/${fecha}/PDF"
ruta_xml="home/var/www/${compania}CFDI/facturas/${fecha}/XML"

for archivo in $archivos; do

    cp "${ruta_pdf}/${archivo}.pdf" "$destino"

    cp "${ruta_xml}/${archivo}.xml" "$destino"
done
