FROM java:8u111-jre-alpine
add build/libs/inventory-service-*.jar /work/app.jar
ENTRYPOINT["java -jar /work/app.jar"]
