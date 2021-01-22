# Proyecto de Trabajo de Titulación Integración de Microservicios con Arquitectura Monolitica 💻

IMAGEN DEL DIAGRAMA



# Arquitetura de Microservicios
![image](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F81bf9939-8aae-4fc8-ad7c-434d450a859f%2FMicroservicios-architecture.png?table=block&id=62e0c693-a012-4e60-90b9-9a7489652787&width=2020&userId=&cache=v2)
## Microservicios 🚀
### Microservicio Seguridad
* https://github.com/CristianGaona/LojaCar-Microservice-Seguridad
### Microservicio Actividades
* https://github.com/CristianGaona/LojaCar-Microservicio-Actividades
### Microservicio Empleados
* https://github.com/CristianGaona/LojaCar-Microservicio-Empleados
### Microservicio Clientes
* https://github.com/CristianGaona/LojaCar-Microservicios-Clientes
### Servidor Eureka
* https://github.com/CristianGaona/LojaCar-Eureka-Server
### Aplicación Móvil
* https://github.com/CristianGaona/App-Movil-Flutter-Tesis

## Integración
### Source Connector
``` json
{
    "name": "sample-postgress-jdbc-connector10",
    "config": {
        "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
        "tasks.max": "2",
        "connection.url": "jdbc:postgresql://localhost:5432/tt-stage-db?user=crisda24&password=sebas2118",
        "query": "SELECT * FROM (SELECT rp.id, rp.name, rp.email, rp.phone, rp.function, rp.commercial_company_name, rp.street, rp.zip, rp.city, cont.name pais, rp.write_date FROM res_partner rp, res_country cont WHERE rp.country_id = cont.id) table_clients",
        "mode": "timestamp",
        "timestamp.column.name": "write_date",
        "topic.prefix": "clients",
        "validate.non.null": "false"
    }
}
````
### Sink Connector
``` json
{
    "name": "sample-mysql-jdbc-sinkconnector",
    "config": {
        "connector.class": "io.confluent.connect.jdbc.JdbcSinkConnector",
        "tasks.max": "2",
        "topics":"clients",
        "connection.url": "jdbc:mysql://localhost:3306/clients_microservice?serverTimezone=UTC",
        "connection.user":"root",
        "connection.password":"crisda24",
        "update.mode": "update",
        "auto.create":true
    }
}
```
## Servidor Local (Localhost) :floppy_disk:
### Comandos Docker (Intalar con Apache Kafka en contenedor Docker)
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
