# sispag
sistema pago

base de datos postgre: 
- en la base de datos postgres crear un schema pagos
- en la carpeta /sispag/database se encuentra el sql de la BD pagos.sql
- importar
- Cualquier ajuste en el archivo sispag/.env esta la configuracion de la base de datos para ajustes

- instalar  PHP composer
- ejecutar dentro de la carpeta 
- composer install 
- php artisan storage:link


iniciar dentro de la carpeta sispag el laravel - > php artisan serve
en el navegado ingresar a 127.0.0.1:8000
usuario:  admin
password: 12345678


en ocasiones suele dar problemas con la public keys correr el siguinte comando: php artisan passport:install
