FROM anapsix/alpine-java:8_server-jre_unlimited
LABEL author="daijiong"
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir -p /xxl-job-executor
WORKDIR /xxl-job-executor
EXPOSE 8084 8085
ADD ./target/xxl-job-executor.jar ./
CMD sleep 10;java -Dfile.encoding=utf-8 -Djava.security.egd=file:/dev/./urandom -jar xxl-job-executor.jar