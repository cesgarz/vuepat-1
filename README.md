# VUEPAT
sistema vuepat

base de datos postgre: 
- En la carpeta /vuepat/misc se encuentra el sql de la BD.
- Cualquier ajuste en el archivo sispag/.env esta la configuracion de la base de datos para ajustes

- Ejecutar composer install
- php artisan storage:link

- Iniciar dentro de la carpeta vuepat el laravel - > php artisan serve
- En el navegado ingresar a 127.0.0.1:8000
	* Credenciales: 	usuario:  admin
						password: 12345678


Nota: En ocasiones suele dar problemas con la public keys correr el siguinte comando: php artisan passport:install.
