# Usar una imagen base de JDK de OpenJDK 17
FROM openjdk:17-jdk-alpine

# Copiar el archivo JAR generado por el build de Spring Boot al contenedor
COPY target/SpringBootRest-0.0.1-SNAPSHOT.jar java-app.jar

# Exponer el puerto en el que se ejecutará la aplicación (el puerto en el que la aplicación escucha)
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "java-app.jar"]