# btu-k-scores

Colección de partituras/instrumentos para `btu-k-sim`

## Estructura

* El repositorio tiene una rama por cada colección de recursos:
  * La rama `master` contiene los recursos por defecto de `btu-k-sim`.
  * Otras ramas contendrán distintas colecciones.
* Cada colección contiene una carpeta por versión de formato de recurso (p.e. `v0.1`).
  * En principio sólo se añade para permitir la convivencia de distintos formatos de recurso en previsión de futuros cambios.
* Dentro de cada formato están los archivos de recurso para esa versión del formato:
  * `instruments.version`: Fichero de texto con la versión de instrumentos
  * `instruments.zip`: Fichero ZIP con los recursos de instrumentos
  * `scores.version`: Fichero de texto con la versión de partituras
  * `scores.zip`: Fichero ZIP con los recursos de partituras

## Generación de links para la configuración de btu-k-sim

Para construir el enlace para el valor `update_link` de la configuración de `btu-k-sim`, hay que usar:

  * La URL base para acceder a los archivos de este repositorio (`https://raw.githubusercontent.com/clvLabs/btu-k-scores`).
  * La rama (colección) a la que se quiere dar acceso.
  * La versión de recurso para la que se da acceso.

Así, para dar acceso a la versión `v0.1` de la colección por defecto, el enlace sería `https://raw.githubusercontent.com/clvLabs/btu-k-scores/master/v0.1`

## Creación de nuevas versiones de recursos

En la carpeta `v0.1` de la rama `master` de este repositorio se encuentra un script `udpate-zip.sh` para ayudar en la actualización de paquetes de recursos.
