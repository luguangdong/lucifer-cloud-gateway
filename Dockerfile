FROM openjdk:17
MAINTAINER lucifer
ADD lucifer-cloud-gateway-1.0.1-SNAPSHOT.jar /data/lucifer-cloud-gateway-1.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Dproject.name=gateway", "-jar", "/data/lucifer-cloud-gateway-1.0.1-SNAPSHOT.jar", "--spring.profiles.active=dev"]
