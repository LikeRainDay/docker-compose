FROM java:8

# 进行Hadoop基本组件的编排设置

ENV HADOOP_VERSION=3.1.0


# 进行Hadoop的属性配置
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}-src.tar.gz \
    && tar -xzvf hadoop-${HADOOP_VERSION}-src.tar.gz \
    && mv hadoop-${HADOOP_VERSION}-src hadoop \
    && rm -rf hadoop-${HADOOP_VERSION}-src.tar.gz

# 进行基本脚本的设置

