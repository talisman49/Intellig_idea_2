FROM openjdk:11 AS base
WORKDIR /opt/hello-spring
COPY ./ ./
RUN ./gradlew assemble
# \ && -rm -rf /root/gradle


# ETAPA DE EJECUCION

FROM openjdk:11
WORKDIR /opt/hello-spring
COPY --from=base /hello-gradle/build/libs/demo-0.0.1-SNAPSHOT.jar ./
-bin.zip ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar
