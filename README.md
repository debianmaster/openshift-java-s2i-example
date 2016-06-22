
This repo demonstrates openshift v3 s2i scripts usage

> In order to use openshift s2i image  create directory  .s2i and files under s2i as follows

#### assemble.sh  
> This file is used dynamically adding artifacts into base image and creating a app image as a result.   

```sh
cp -Rf /tmp/src/. $CATALINA_HOME/webapps
echo "WAR's copied"
```

#### run.sh
> This file is used for mentioning startup script.   

```sh
${CATALINA_HOME}/bin/catalina.sh run
```

### Create builder image
```sh
docker build -t tomcat8-jdk8 .
```

### Test builder image by deploying war
>  on base image tomcat8-jdk8 deploy the war (contents) that is present in test/test-app and make a app image called (tomcat8-jdk8-app)   

```sh
s2i build test/test-app tomcat8-jdk8 tomcat8-jdk8-app
```

### Test the app image
```sh
docker run -d  -p 8080:8080  tomcat8-jdk8-app 
```
