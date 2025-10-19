# Servicios Limar (Sustentación del Parcial Práctico - Bases de Datos Grupo 80)
En este repositorio se encuentran las instrucciones del DDL y del DML para la creación de la base de datos de Servicios Limar
*Autor:* Juan Pablo Escamilla (2420580-2724)

# Uso
Para mayor información se puede revisar el informe y el video. A grandes rasgos, las instrucciones requeridas para desplegar los contenedores necesarios para la creación de la base de datos son: 
- `docker run --rm --name parcial_bd_practica -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:12` para la creación del contenedor de PostgreSQL
- `docker run --rm -p 5050:80 --link parcial_bd_practica:ex4men_db -e "PGADMIN_DEFAULT_EMAIL=usuario@servlimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4` para la creación del contenedor de PGAdmin_V4

# Contenido de la Entrega
- **Informe y Archivos de Instrucciones del DDL y DML:** Se encuentran es este repositorio, listas para ser usadas
- **Video:** Se encuentra en el archivo PDF adjunto a la entrega en el Campus Virtual.
