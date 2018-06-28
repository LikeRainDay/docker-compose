FROM java:8
# 当前进行基本的Java环境搭建

# 增加下载包的环境
ADD https://raw.githubusercontent.com/guilhem/apt-get-install/master/apt-get-install /usr/bin/

# 进行更新插件包
RUN RUN apt-get-install -y curl \
    && chmod +x *.sh

# 执行结尾命令
CMD [ "执行完成建立了基础的镜像" ]