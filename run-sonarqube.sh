#!/bin/sh
set -e
apk add --no-cache openjdk17 wget unzip
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH="$JAVA_HOME/bin:$PATH"
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
unzip sonar-scanner-cli-5.0.1.3006-linux.zip
mv sonar-scanner-5.0.1.3006-linux sonar-scanner
rm -rf sonar-scanner/jre
export PATH="$PATH:$(pwd)/sonar-scanner/bin"
java -version
sonar-scanner -Dsonar.projectKey=task-manager-backend-flask \
              -Dsonar.sources=backend/ \
              -Dsonar.host.url=$SONAR_HOST_URL \
              -Dsonar.login=$SONAR_TOKEN

