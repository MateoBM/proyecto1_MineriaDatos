#!/bin/bash

#1. Descargo los datos

wget -q -O exoplanetas.csv "https://exoplanetarchive.ipac.caltech.edu/TAP/sync?query=SELECT+pl_name,pl_rade,pl_bmasse+FROM+ps+WHERE+pl_rade+IS+NOT+NULL+AND+pl_bmasse+IS+NOT+NULL&amp;format=csv"


#2. base de datos

python3 constructor_db.py



#3. visualización

python3 analisis_visual.py

echo "Imagen creada: resultado.png"

