# Introducción al proyecto

Este proyecto es una API creada con la idea de trabajar con cajeros de cobro(TPV), 
el fin de la aplicación es poder manejar la información que los cajeros mandan a una base de datos,
a esta aplicación podrán acceder aquellos clientes que tengan algún cajero contratado.

# Índice
1. Descargas necesarias y creación de carpeta
2. Creación entorno virtual y preparación del mismo 
3. Preparación de la base de datos
4. Ejecución del proyecto
5. Soluciones a posibles problemas


## 1. Descargas necesarias y creación de carpeta

Para usar el proyecto he usado Visual Studio Code, por lo tanto necesitaremos tenerlo instalado.
Lo primero que necesitaremos es tener Python instalado en nuetro ordenador, ya que la API está creada con Python. 

Además necesitares XAMPP para la base de datos, de momento he usado XAMPP para hacer mi base de datos, 
pero la idea es que en un futuro la base de datos esté en un servidor en la red al que se pueda conectar la API.

Para nuestro proyecto tenemos que crear una carpeta en la cual vamos a trabajar, se puede llamar de cualquier manera.
Dentro de la carpeta tendremos que meter el archivo src descomprimido y el fichero "requirements.txt" que descargamos desde el repositorio de github. 

También necesitaremos descargar la base de datos del repositorio.

![contenido carpeta](https://user-images.githubusercontent.com/113713313/233305282-74afbb1e-fd74-41d3-b432-63b4239d0460.png)

## 2. Creación entorno virtual y preparación del mismo

Desde Visual abrimos la carpeta de nuestro proyecto y lo primero que haremos es crear nuestro entorno virtual con el que trabajaremos.
Para ello usaremos este comando:
```
$ python -m venv nombre_entorno
```

Una vez creado lo tendremos que activar con el comando:
```
$ .\nombre_entorno\Scripts\activate
```

![pasosterminal](https://user-images.githubusercontent.com/113713313/233306169-5418f21c-536f-4d33-9b73-92bb29e4f1a7.png)


Cuando esté activo necesitaremos instalar todas las dependencias y para ello tenemos el archivo "requirements.txt"
para usarlo ejecutaremos:
```
$ pip install -r “requirements.txt”
```

Una vez hecho solo nos faltará la base de datos y ya tendremos nuestro proyecto listo.


## 3. Preparación de la base de datos

Como he explicado antes necesitaremos una base de datos en XAMPP, 
para ello ejecutaremos el panel de control de XAMPP, necesitaremos activar Apache y una vez listo tendremos que activar MySQL.
Para poder crear la base de datos tendremos que acceder al administrador de phpMyAdmin.

![XAMPP](https://user-images.githubusercontent.com/113713313/233298041-1ec37b4e-8c81-4b31-8a54-405bf06d6fcd.png)

Una vez dentro tendremos que crear una nueva base de datos que se llame: api_cajero

![CrearBD](https://user-images.githubusercontent.com/113713313/233298661-e120590a-313d-4504-8b9d-e9b95198ba7d.png)

Y cuandro entremos dentro le tendremos que dar a importar base de datos y seleccionaremos el archivo que hemos descargado del repositorio que se llama api_cajero.sql

![ImportarBD](https://user-images.githubusercontent.com/113713313/233298906-f899ffd4-e3ce-4e0f-8ae8-c445aeb3fbf7.png)

Una vez terminado esto sin problemas ya tendremos nuestra base de datos lista.


## 4. Ejecución del proyecto

Una vez terminados todos los pasos anteriores ya podremos ejecutar nuestro proyecto, 
para ello desde la terminal en Visual, estando dentro de la carpeta del proyecto y teniendo el entorno virtual activado usaremos el siguiente comando:
```
$ python .\src\api.py
```

En la terminal nos aparecerá donde se está ejecutando el proyecto, podemos verlo haciento click encima del enlace manteniendo la tecla `ctrl` o también 
escribiendo en nuestro buscador "localhost:5000"


## 5. Soluciones a posibles problemas

A la hora de crear y usar a veces ha ocurrido algún problemas con las dependencias que no se instalan bien, si el error que sale es de authlib
tendremos que volver instalarlo:
```
$ pip install authlib
```

Si también aparece algún error de requests también lo tendremos que volver a instalar
```
$ pip insatll requests
```

Si el problema reside en los imports de api.py, significa que tendremos que seleccionar el interpretador de Python, para ello
haremos `ctrl+shift+P`

![python interpreter](https://user-images.githubusercontent.com/113713313/233310221-22d26531-faee-4446-aad4-c9c278d4761b.png)

Le daremos a elegir un path y después a find

![path](https://user-images.githubusercontent.com/113713313/233310461-1afea973-f3c4-4383-b3a7-59b3235a8cb6.png)

Se nos abrirá la carpeta del proyecto y deberemos navegar hasta donde se encuentra el entorno

![Captura de pantalla 2023-04-20 104259](https://user-images.githubusercontent.com/113713313/233310998-5c1a637d-55cb-4ec9-b05b-379a4d36330c.png)

Dentro de la carpeta tendremos que entrar en Scripts y elegir el archivo que se llama Python

![Captura de pantalla 2023-04-20 104410](https://user-images.githubusercontent.com/113713313/233311365-9a4cfd2e-a414-403f-adc9-b3d41cd378b2.png)

Después de esto el problema debería estar arreglado.

