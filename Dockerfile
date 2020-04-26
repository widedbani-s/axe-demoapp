FROM openjdk:8-jre-alpine
LABEL MAINTAINER="Ahmed Hosni <ahmedhosni.contact@gmail.com>"

COPY ./target/demoapp.jar /app/app.jar
COPY hello-world.yml /app/config.yml
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/app.jar"]
CMD ["server","/app/config.yml"]
