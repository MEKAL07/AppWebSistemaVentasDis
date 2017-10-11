/*
proyecto> git init //para iniciar el github


proyecto> git add * //para añadir todas las fuentes al repositorio

proyecto> git status //vemos que archivos se modificó

proyecto> git commit -m "Subo la estructura del proyecto al repositorio de GitHub" //el commit
proyecto> git remote add origin git@github.com:my_company/my_project.git //a donde lo vamos a subir
proyecto> git push -u origin master //para empezar a subir los cambios

//para descargar los cambios de otros developers

proyecto> git pull origin master



//creacion de nuevo proyecto laravel

htdocs> composer create-project --prefer-dist laravel/laravel laravelcrud 

//para minimizar la ruta
proyecto>php -S localhost:8080 -t public

//agregar migracion
proyecto>composer install
proyecto>php artisan make:migration create_tproducto_table
proyecto>php artisan migrate
proyecto>php artisan db:seed
proyecto>php artisan key:generate
*/