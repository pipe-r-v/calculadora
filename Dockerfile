# Utiliza una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Instala git para poder clonar el repositorio
RUN apt-get update && apt-get install -y git

# Clona el repositorio
RUN git clone https://github.com/pipe-r-v/calculadora.git .

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para acceder a la aplicación
EXPOSE 5000

# Define el comando de inicio de la aplicación
CMD ["python", "app.py"]


