# Cómo usar la API

Lo primero que tenemos es un login, si tenemos una cuenta podremos acceder, si no es el caso tendremos que registrarnos.

Una vez registrado y logeado accederemos al listado de cajeros que tengamos, si el usuario se acaba de registrar no 
tendrá ningún cajero por lo que tendrá que añadirlo con el botón de registrar cajero, para registrar un cajero 
pedirá el número de serie, dónde está instalado y si está activo o inactivo.

Hay que tener en cuenta que de momento no se trabaja directamente con cajeros, por lo tanto es todo teórico, para el número de serie,
he estado poniendo C1, C2, C3, etc. para la localidad he usado nombre de ciudades, aunque la idea es que en un futuro en ese campo aparezca 
la dirección de dónde está el cajero, una vez registrado el cajero aparecerá en el listado con los datos introducidos.

En las páginas aparece arriba a la derecha quién está registrado en ese momento y podemos salir de la cuenta o acceder al perfil, desde el cual
se puede cambiar el nombre de usuario, el número de teléfono y el correo, además de la contraseña. 

Desde el listado de cajeros ya hemos visto que se pueden registrar cajeros, a parte de esto podemos editar los cajeros, cambiando dónde estarían instalados y el estado.
También se pueden eliminar los cajeros, pero no se eliminan realmente, solo desaparecen del listado, en la base de datos siguen estando.

De cada cajero podemos acceder a su listado de transacciones, como he dicho antes es todo teórico por lo que cuando 
registramos un cajero este no tiene ninguna transacción y tenemos que registrarla nosotros.

Para las transacciones nos pedirá el nombre de la persona que realiza la transacción, el dinero que se mueve, 
el número de tarjeta y la fecha en la cual se realiza la transacción.

Una vez registrado, al igual que el listado de cajeros, aparecerá el listado de transacciones con los datos de cada transacción. 
Las transacciónes sólo se pueden eliminar y ocurreo lo mismo que con los cajeros.

De los dos listados que hay, de cajeros y transacciones, podemos guardarlos como PDF con el botón que tiene el símbolo de PDF.
