FROM ubuntu:16.04

# Install Java.

RUN apt-get update

RUN apt-get install -y wget

RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.tar.gz

RUN mkdir /opt/jdk

RUN tar -zxf jdk-8u201-linux-x64.tar.gz -C /opt/jdk

RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_201/bin/java 100

RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_201/bin/javac 100

# set path
ENV JAVA_HOME /opt/jdk/jdk1.8.0_201

ENV PATH $PATH:$JAVA_HOME/bin

RUN java -version

WORKDIR ~/StudentService

COPY target/StudentService-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]

