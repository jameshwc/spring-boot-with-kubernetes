FROM openjdk:8-jdk-alpine
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY target/demo-0.0.1-SNAPSHOT.jar /opt/app.jar
COPY run.sh /opt/run.sh

EXPOSE 8080
ENTRYPOINT ["/bin/sh", "/opt/run.sh"]
