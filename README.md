# Proyecto de Trabajo de Titulación Integración de Microservicios con Arquitectura Monolitica 💻

IMAGEN DEL DIAGRAMA

## Microservicios 🚀
### Microservicio Seguridad
* https://github.com/CristianGaona/LojaCar-Microservice-Seguridad
### Microservicio Actividades
* https://github.com/CristianGaona/LojaCar-Microservicio-Actividades
### Microservicio Empleados
* https://github.com/CristianGaona/LojaCar-Microservicio-Empleados
### Servidor Eureka
* https://github.com/CristianGaona/LojaCar-Eureka-Server

## Servidor Local (Localhost) :floppy_disk:
### Comandos Docker
Crear red: **docker network create lojacar**

Crear contenedor kafka : **docker run -p 2181:2181 -p 9092:9092 --name lojacarkafka --network lojacar -e ADVERTISED_HOST=127.0.0.1  -e NUM_PARTITIONS=3 johnnypark/kafka-zookeeper**
* Entrar al contenedor de kafka : **docker exec -it [identificador/nombre] sh** / **docker exec -it [identificador/nombre] bash**
* **cd opt** para entrar a la carpeta en donde esta kafka
* **cd kafka_2.12-2.4.0/** entrar a la carpeta de kafka
* **cd bin** ver los archivos que hay dentro de kafka (opcional)
* **cd windows** en este caso por lo que se esta ejecutando kafka con un SO windows 10 (opcional)
* **cd config** explrar archivos de configuraciones (opcional)
* **cd logs** ver logs del broker de kafka (opcional)
* **cp server.properties severcopy.properties** crear una copia del servidor kafka (archivo server.properties) en caso que se dañe el archivo original o para tener varios servidores y de esta forma asegurar la tolerancia a fallos.
* **vi server.properties** para entar a la edición del archivo ahi se puede observar el id del broker, el host y puerto en el que esta corriendo el servidor de kafka o broker, la ruta de logs, número de particiones, replicas y la conexióna a zookeper, tomar en consideración que el **advertised.listeners=PLAINTEXT://127.0.0.1:9092** este habilitado
* **:q!** para salir sin guiardar cambios o **:qw** para salir y guardar cambios



### Iconos
https://gist.github.com/rxaviers/7360908
