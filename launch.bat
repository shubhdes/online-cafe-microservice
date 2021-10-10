IF NOT DEFINED in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )

SET MAVEN_REPO="D:\maven-repo\com\spring\boot\microservice\"
RMDIR /s /q %MAVEN_REPO%online-cafe-core-module
RMDIR /s /q %MAVEN_REPO%online-cafe-naming-server
RMDIR /s /q %MAVEN_REPO%online-cafe-api-gateway
RMDIR /s /q %MAVEN_REPO%online-cafe-orders-service
RMDIR /s /q %MAVEN_REPO%online-cafe-products-service

CALL mvn clean install -DskipTests

SET ROOT="D:\projects\spring-boot-microservice\online-cafe-microservice\"
CD %ROOT%\online-cafe-naming-server
CALL docker build -t shubhdes/online-cafe-naming-server:1.0 .
CD %ROOT%
CD %ROOT%\online-cafe-api-gateway
CALL docker build -t shubhdes/online-cafe-api-gateway:1.0 .
CD %ROOT%
CD %ROOT%\online-cafe-orders-service
CALL docker build -t shubhdes/online-cafe-orders-service:1.0 .
CD %ROOT%
CD %ROOT%\online-cafe-products-service
CALL docker build -t shubhdes/online-cafe-products-service:1.0 .
CD %ROOT%

CALL docker-compose up