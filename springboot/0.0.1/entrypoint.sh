#!/bin/bash

source /.env
if [ -z "${SPRINGBOOT_APPLICATION_CONFIG}" ]; then
    echo "SPRINGBOOT_APPLICATION_CONFIG is unset or set to the empty string"
else
    IFS=';' read -a array <<< "$SPRINGBOOT_APPLICATION_CONFIG"
	for item in "${array[@]}"
	do
	    eval "export ${item}"
	done
fi
cd /app
java -XX:+PrintCommandLineFlags -Duser.timezone=GMT+08 -Djava.security.egd=file:/dev/./urandom  $JAVA_OPTS $JAVA_AGENT -jar app.jar
