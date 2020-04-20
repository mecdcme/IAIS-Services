FROM adoptopenjdk/openjdk11:alpine-jre
RUN apk add curl
ARG JAR_FILE=meta-service/target/meta-service-2.2.5.RELEASE.jar
COPY ${JAR_FILE} app.jar
RUN ls -lh
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/postgres?currentSchema=iais_meta
ENV SPRING_DATASOURCE_USERNAME=postgres
ENV SPRING_DATASOURCE_PASSWORD=postgres
ENV SPRING_DATASOURCE_DRIVERCLASSNAME=org.postgresql.Driver
ENV SPRING_DATASOURCE_PLATFORM=postgresql
ENTRYPOINT ["java","-jar","app.jar","md.parstat.iais.MetaServiceApplication"]