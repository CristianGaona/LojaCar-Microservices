# Proyecto de Trabajo de Titulación Integración de Microservicios con Arquitectura Monolitica
## Microservicios 🚀
### Microservicio Seguridad
### Microservicio Actividades


## Servidor Local (Localhost)
### Comandos Docker
Crear red: **docker network create lojacar**

Crear contenedor kafka : **docker run -p 2181:2181 -p 9092:9092 --name lojacarkafka --network lojacar -e ADVERTISED_HOST=127.0.0.1  -e NUM_PARTITIONS=3 johnnypark/kafka-zookeeper**
* Entrar al contenedor de kafka : **docker exec -it [identificador/nombre] sh** / **docker exec -it [identificador/nombre] bash**
* **cd opt** para entrar a la carpeta en donde esta kafka
* **cd kafka_2.12-2.4.0/** entrar a la carpeta de kafka
