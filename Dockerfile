FROM jboss/base-jdk:7
MAINTAINER ravi gupta (rgupta@redhat.com)

WORKDIR .
 

COPY ./test/test-app/* .

USER 1000

 

CMD javac *.java
CMD java HelloWorldApp
 
