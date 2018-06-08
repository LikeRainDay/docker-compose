FROM java:8


# 讲运行脚本加入到容器中
COPY setup.sh /shell/setup.sh

# 讲项目的jar包进行导入容器中
COPY target/model-market.jar /jar/model-market.jar

# 进行创建文件
RUN bash -c "touch /jar/model-market.jar"

# 赋予运行权限
RUN chmod +x /shell/setup.sh

# 进行创建目录
RUN mkdir log

# 挂载容器
VOLUME [ "/log" ]

# 对外暴露的端口
EXPOSE 8089

# 进行运行脚本
CMD [ "sh","/shell/setup.sh" ]
