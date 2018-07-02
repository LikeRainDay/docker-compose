FROM java:8

# 进行Hadoop基本组件的编排设置

ENV HADOOP_VERSION=3.1.0

COPY /config /config

# 增加下载包的环境
ADD https://raw.githubusercontent.com/guilhem/apt-get-install/master/apt-get-install /usr/bin/

RUN chmod +x /usr/bin/apt-get-install 

# 进行更新插件包
RUN apt-get-install -y curl \
    && chmod +x ./config/*.sh



# 进行Hadoop的属性配置
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -xvzf hadoop-${HADOOP_VERSION}.tar.gz \
    && mv hadoop-${HADOOP_VERSION} hadoop \
    && rm -rf hadoop-${HADOOP_VERSION}.tar.gz

ENV HADOOP_HOME=/hadoop
ENV HADOOP_PATH=/hadoop/bin
ENV HADOOP_CONF_DIR=/hadoop/etc/hadoop
# ENV YARN_CONF_DIR=/hadoop/etc/hadoop

RUN mv /config/core-site.xml ${HADOOP_CONF_DIR} \
    && mv /config/hdfs-site.xml ${HADOOP_CONF_DIR} \
    && mv /config/mapred-site.xml ${HADOOP_CONF_DIR} \
    && mv /config/yarn-site.xml ${HADOOP_CONF_DIR} \
    && mv /config/hadoop-env.sh ${HADOOP_CONF_DIR} \
    && mv /config/workers ${HADOOP_CONF_DIR} \
    && mv /config/yarn-env.sh ${HADOOP_CONF_DIR} 


# VOLUME [ "/hadoop-${HADOOP_VERSION}/etc" ]

RUN apt-get-install -y python3 python3-setuptools python3-pip


# Fix the value of PYTHONHASHSEED
# Note: this is needed when you use Python 3.3 or greater
ENV PYTHONHASHSEED 1



