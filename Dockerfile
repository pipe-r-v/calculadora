# Utiliza una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de la aplicación al contenedor
COPY . /app

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para acceder a la aplicación
EXPOSE 5000

# Define el comando de inicio de la aplicación
CMD ["python", "app.py"]


