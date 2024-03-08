# 简介
这是一些适配`1Panel`商店的docker应用配置。

## Tomcat运行环境
## SpringBoot运行环境

## 获取应用

git clone https://mirror.ghproxy.com/https://github.com/zhangyz189/appstore /tmp/appstore-localApps
rm -rf /opt/1panel/resource/apps/local/tomcat
rm -rf /opt/1panel/resource/apps/local/springboot
cp -rf /tmp/appstore-localApps/* /opt/1panel/resource/apps/local/
rm -rf /tmp/appstore-localApps