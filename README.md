### openshift-s2i-example
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


