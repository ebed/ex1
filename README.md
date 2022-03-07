# Detalle ejercicio

Para este ejercicio opté crear clases que se encargaran de la lógica, teniendo la principal que ejecuta el ejercicio, llamada TEST,
la clase Calendar que almacena varios bloques.

Para identificar las horas libres, utilicé un arreglo de enteros, donde en cada posicion i (que sería la hora), almacenaría el ID de la compañia.

El gran problema que me surgió, fue que aparecieron casos que  no estaban claros al inicio en el ejericio y aparecieron  cuando ejecuté las pruebas, por ejemplo, ssi llegan 5 compañias en paralelo,
que criterio se utiliza para escoger cual tomará el lugar. Inicialmente guardaba la última que llegó, pero esto no pasó con las pruebas y tuve que comenzar a ir probando  como era la combinacióñ correcta para  que pasara, 
lo que me gastó demasiado tiempo.... 



# Lógica

Se utilizó la clase TEST, ubicada en 
app/classes/

Esta clase orquesta las llamadas.

Por otro lado generé las clases Calendar y Block, donde Calendar se encarga de gestionar un conjunto de Bloques.

# Pruebas locales del código

Para probar, levantaba el ambiente docker y luego ejecutaba 
docker-compose exec web bundle exec rails c

Y ahi bastaba con un Test.new



