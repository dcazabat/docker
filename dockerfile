# Les decimos de donde partimos para crear nuestra imagen
FROM ubuntu

# LABEL es para indicar o marcar cosas en el contenedor
LABEL author="Daniel Cazabat"
LABEL version=1.0

# Directorio de Trabajo por defecto y cuando entramos a la imagen ya estamos ahi
WORKDIR /home

# Comandos para ya pararnos en donde queremos trabajar
RUN mkdir app
RUN cd app

# Creacion de variables de ambiente
ENV MYVAR Esto es lo que contiene la variable de ambiente

# Ya dentro de la imagen ejecutamos los comando que necesitemos
RUN apt update && apt upgrade -y
RUN apt install python3 -y
RUN apt install python3-pip -y

# Copia de archivos locales a la imagen
COPY requirements.txt .

# Instalación de dependencias del proyecto desde requeriments.txt
RUN pip3 install -r ./requirements.txt


