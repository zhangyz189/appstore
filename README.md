# 简介
这是一些适配`1Panel`商店的docker应用配置。

## Tomcat运行环境
## SpringBoot运行环境
```shell
JAVA version:	openjdk:23-jdk-oracle
springboot应用包地址:	/root/temp/gs-accessing-data-mysql/complete/target/accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar
端口:	8082
springboot应用端口号:	8080
JVM option:	-Xms64m
springboot环境变量配置:	spring_datasource_url=jdbc:mysql://mysql:3306/springboot;spring_datasource_username=springboot;spring_datasource_password=D7DP8EhJYX5PAjRN;
```

## 获取应用

```shell
git clone https://mirror.ghproxy.com/https://github.com/zhangyz189/appstore /tmp/appstore-localApps
rm -rf /opt/1panel/resource/apps/local/tomcat
rm -rf /opt/1panel/resource/apps/local/springboot
cp -rf /tmp/appstore-localApps/* /opt/1panel/resource/apps/local/
rm -rf /tmp/appstore-localApps
```