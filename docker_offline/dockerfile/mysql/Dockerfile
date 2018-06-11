FROM mysql:5.6

# RUN mkdir -p $houshuaiConfig

# 进行构建当前的镜像 并更改其中的配置项
COPY /config /houshuai_config

RUN ls -l /houshuai_config

# 进行讲对应内容进行拷贝到 /etc/mysql/conf.d/ 目录中
RUN cp -f /houshuai_config/my-mysql.cnf /etc/mysql/conf.d/my-mysql.cnf

# 赋予运行权限
RUN chmod +x /houshuai_config/setup.sh
    # chmod +x /houshuai_config/start.sh

# RUN sh /houshuai_config/setup.sh

# 设置容器启动命令
CMD [ "sh", "/houshuai_config/setup.sh" ]



