FROM openjdk:8-jdk-alpine
RUN apk add --no-cache curl
EXPOSE 8089
RUN curl -o achat-1.0.jar -L "http://192.168.50.4:8081/repository/maven-releases/tn/esprit/rh/achat/1.0/achat-1.0.jar"
ENTRYPOINT ["java","-jar","/achat-1.0.jar"]