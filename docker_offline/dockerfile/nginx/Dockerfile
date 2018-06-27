# 进行手动构建Nginx
FROM houshuai0816/base_centos:1.0

# 将相关文件进行拷贝
COPY ./config /houshuai_config

WORKDIR /houshuai_config

# 进行解压nginx
RUN tar -zxvf nginx-1.15.0.tar.gz

# 设置工作空间
WORKDIR /houshuai_config/nginx-1.15.0/

# 进行启动nginx

RUN sh configure --prefix=/usr/local/nginx --with-pcre
RUN make && \
    make install
RUN /usr/local/nginx/sbin/nginx

WORKDIR /houshuai_config

# RUN ls -l /etc

# RUN ls -l /etc/nginx

# RUN find / -name "conf.d"

# RUN find / -name "nginx.conf"


RUN mkdir -p /etc/nginx/conf.d

# 进行移动当前的配置到容器中
RUN mv global.conf /etc/nginx/conf.d/
RUN mv nginx.conf /usr/local/nginx/conf/nginx.conf

# 修改Nginx的配置文件。以非daemon方式启动
RUN echo "deamon off;" > /usr/local/nginx/conf/nginx.conf

# 讲脚本放置在sbin中
RUN mv  run-step.sh /usr/local/sbin/run-step.sh
RUN chmod 755 /usr/local/sbin/run-step.sh

# 开放 22 80 443 端口
EXPOSE 22
EXPOSE 80
EXPOSE 443

# 启动命令 不可替换
ENTRYPOINT  [ "sh","/usr/local/sbin/run-step.sh"]




