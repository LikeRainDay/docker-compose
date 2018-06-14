FROM centos

# 基础的centos
RUN yum install -y wget &&\
    yum install make -y &&\
    yum install -y xinetd telnet telnet-server && \
    yum install -y gcc-c++ pcre-devel zlib-devel &&\
    yum update -y

# TODO 后续增加对应的基础脚本命令


# 增加基础的脚本地址
CMD [ "echo","\" 镜像构建完成 \"" ]