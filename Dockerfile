
FROM openjdk:17-jdk-slim

RUN addgroup --system appgroup && adduser --system appuser --ingroup appgroup
USER appuser

WORKDIR /app

COPY myapp/target/myapp-1.0.0.jar app.jar


EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
