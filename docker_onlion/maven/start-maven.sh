#!/bin/bash 

# 进行构建Maven 私服仓库

docker pull sonatype/nexus3

# 初始密码 admin/admin123
docker run -d -p 8081:8081 --name nexus -v /root/nexus-data:/var/nexus-data --restart=always sonatype/nexus3

# 配置你的maven 仓库 settings.xml 更改为你对应的 用户账号密码
# <?xml version="1.0" encoding="UTF-8"?>
# <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
#           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
#           xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
#     <servers>
#       <server>
#         <id>test</id>
#         <username>yourname </username>
#         <password>yourpssword</password>
#       </server>
#     </servers>
# </settings>


# 在POm.xml配置 如下
# <?xml version="1.0" encoding="UTF-8"?>
# <project xmlns="http://maven.apache.org/POM/4.0.0"
#          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
#          xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
#     <modelVersion>4.0.0</modelVersion>
#     <groupId>com</groupId>
#     <artifactId>test-lib</artifactId>
#     <!--注意限定版本一定为RELEASE,因为上传的对应仓库的存储类型为RELEASE-->
#     <version>1.0-RELEASE</version>
#     <packaging>jar</packaging>

#     <!--指定仓库地址-->
#     <distributionManagement>
#         <repository>
#             <!--此名称要和.m2/settings.xml中设置的ID一致-->
#             <id>test</id>
#             <url>http://xxx.xxx.xxx.xxx:8081/repository/test-release/</url>
#         </repository>
#     </distributionManagement>

#     <build>
#         <plugins>
#             <!--发布代码Jar插件-->
#             <plugin>
#                 <groupId>org.apache.maven.plugins</groupId>
#                 <artifactId>maven-deploy-plugin</artifactId>
#                 <version>2.7</version>
#             </plugin>
#             <!--发布源码插件-->
#             <plugin>
#                 <groupId>org.apache.maven.plugins</groupId>
#                 <artifactId>maven-source-plugin</artifactId>
#                 <version>2.2.1</version>
#                 <executions>
#                     <execution>
#                         <phase>package</phase>
#                         <goals>
#                             <goal>jar</goal>
#                         </goals>
#                     </execution>
#                 </executions>
#             </plugin>
#         </plugins>
#     </build>
# </project>