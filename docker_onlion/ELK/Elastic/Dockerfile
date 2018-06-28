FROM houshuai0816/elk:6.3

# 首先进行进行下载Elastic 6.3版本内容

ENV ELASTIC_VERSION=6.3.0


# 进行安装对应的Elastic的安装包
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ELASTIC_VERSION}.zip \
    && tar -r elasticsearch-${ELASTIC_VERSION}.zip \
    && mv elasticsearch-${ELASTIC_VERSION} elastic \
    && rm elasticsearch-${ELASTIC_VERSION}.zip \
    && cd /



# 进行增加Node.js 版本信息内容

# 进行增加对应的Elastic-head 的头内容
RUN bin/elasticsearch

# 进行运行当前的elastic







