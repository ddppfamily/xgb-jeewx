#!/bin/bash
cd jeecg-p3-biz-alipay-single
mvn install package -Dmaven.test.skip=true

cd ..\jeecg-p3-biz-qywx
mvn install package -Dmaven.test.skip=true

cd ..\jeewx
set MAVEN_OPTS=%MAVEN_OPTS% -Xms1024M -Xmx1024M -XX:PermSize=256M -XX:MaxPermSize=256M
mvn tomcat:run

echo 'build project successfully!'