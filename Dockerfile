# syntax=docker/dockerfile:1
FROM node:18-alpine          # Imagen base de Node.js ligera y optimizada
WORKDIR /app                 # Establece el directorio de trabajo dentro del contenedor
COPY . .                     # Copia todos los archivos del proyecto al contenedor
RUN npm install              # Instala las dependencias
CMD ["node", "app.js"]       # Comando que ejecutará el contenedor al iniciarse
EXPOSE 3000                  # Expone el puerto 3000 para que pueda ser accedido desde fuera