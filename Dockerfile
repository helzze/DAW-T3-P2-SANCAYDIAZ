#Imagen base con OpenJDK 21
FROM eclipse-temurin:21-jdk-alpine

#Crear Directorio par la app
VOLUME /tmp

#Se define el archivo .jar en la carpeta target
ARG JAR_FILE=target/daw-t3-pregunta2-sancaydiaz-0.0.1-SNAPSHOT.jar

#Copia el .jar en la imagen Docker
COPY ${JAR_FILE} app.jar

#Exponer puerto 8080
EXPOSE 8080

#Ejecutamos la aplicación cuando se inicie el contenedor
ENTRYPOINT ["java", "-jar", "/app.jar"]
