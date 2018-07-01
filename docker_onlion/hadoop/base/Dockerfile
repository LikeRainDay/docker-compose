FROM java:8

# 进行Hadoop基本组件的编排设置

ENV HADOOP_VERSION=3.1.0

COPY /config /config

# 增加下载包的环境
ADD https://raw.githubusercontent.com/guilhem/apt-get-install/master/apt-get-install /usr/bin/

RUN chmod +x /usr/bin/apt-get-install

# 进行更新插件包
RUN apt-get-install -y curl

# 进行Hadoop的属性配置
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -xvzf hadoop-${HADOOP_VERSION}.tar.gz \
    && mv hadoop-${HADOOP_VERSION} hadoop \
    && rm -rf hadoop-${HADOOP_VERSION}.tar.gz

VOLUME [ "/hadoop-${HADOOP_VERSION}/etc" ]

ENV HADOOP_HOME=hadoop-${HADOOP_VERSION}
ENV PATH=hadoop-${HADOOP_VERSION}/bin
ENV HADOOP_CONF_DIR=hadoop-${HADOOP_VERSION}/etc/hadoop
ENV YARN_CONF_DIR=hadoop-${HADOOP_VERSION}/etc/hadoop
# 进行基本脚本的设置




