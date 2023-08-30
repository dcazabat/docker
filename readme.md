# Descargar una imagen desde Docker Hub

docker pull ubuntu:latest

# Ejecutar un contenedor basado en la imagen de Ubuntu

docker run -it ubuntu:latest

-- El modificador "it" permite interactuar con el contenedor utilizando la terminal.

# Ejemplo de mapeo de puertos y montaje de volúmenes

docker run -d -p 8080:80 -v /ruta/host:/ruta/contenedor mi_aplicacion

# Montaje de Volumenes

docker run -v /ruta/host:/ruta/contenedor mi_app_datos


# Crear una red personalizada
docker network create mi_red_personalizada

# Ejemplo de conectar un contenedor a una red personalizada
docker run -d --network mi_red_personalizada --name contenedor_red mi_aplicacion

# Iniciar servicios definidos en docker-compose.yml
docker-compose up -d

# Detener y eliminar servicios y contenedores
docker-compose down

# Construir una imagen a partir de un Dockerfile
docker build -t mi_imagen:tag .

# Etiquetar una imagen
docker tag mi_imagen:tag mi_usuario/mi_imagen:version1.0

# Subir una imagen a Docker Hub o un registro privado
docker push mi_usuario/mi_imagen:version1.0

# Ejemplo de ejecución de un contenedor con opciones de seguridad

docker run --cap-drop=SYS_ADMIN --read-only --security-opt="apparmor=profile" mi_aplicacion_segura
