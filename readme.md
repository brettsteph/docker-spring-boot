## This source code is a Spring Boot web application.
 
Tested with
* Docker 24.0.5
* Ubuntu 22
* Java 17
* Spring Boot 3.1.4.RELEASE
* Maven 3+

## How to run this?
```bash
$ git clone https://github.com/brettsteph/docker-spring-boot
$ cd docker-spring-boot
$ mvn clean package
$ java -jar target/*.jar

  access http://localhost:8080

//dockerize

// create a docker image
$ sudo docker build -t spring-boot:1.0 .
// run it
$ sudo docker run -d -p 8080:8080 -t spring-boot:1.0

  access http://localhost:8080
```
