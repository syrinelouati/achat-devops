FROM openjdk:8-jdk-alpine
EXPOSE 8082
RUN curl --request -o achat-1.0.jar -L "http://http://192.168.50.4:8081/repository/maven-releases/tn/esprit/rh/achat/1.0/achat1.0.jar"
ENTRYPOINT ["java","-jar","/achat-1.0.jar"]