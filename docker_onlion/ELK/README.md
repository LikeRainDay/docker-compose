# ELK 
> 本内容采用ELK+FileBeat进行收集


# 架构设计
* 普通的ELK的架构模式应该为此：
![](image/ELK_beat.jpe)
<center>图1.1</center>

* 大型项目的架构图为带有消息队列的

![](image/ELK_beat_rabbitmq.jpe)
<center>图1.2</center>


# 本模块采用

本项目目前将采用图1.1的架构进行用Docker 进行实现，并进行分布式部署。 以后有条件进行更改为图1.2的架构实现


# 使用到的模块下载地址

1.  [Elastic ](https://www.elastic.co/downloads/elasticsearch) : 下载包 6.3 的地址为 https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.0.zip

2. [elasticsearch-head ](https://github.com/mobz/elasticsearch-head): 其中包含了安装的说明: `git clone git://github.com/mobz/elasticsearch-head.git`

3. [Filebeat](https://www.elastic.co/downloads/beats/filebeat) : [linux  64位的下载包 6.3](https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.3.0-linux-x86_64.tar.gz)

4. [Logstash docker安装方式](https://www.elastic.co/guide/en/logstash/current/docker.html)

5. [Kibana](https://www.elastic.co/downloads/kibana) Kibana6.3.0 linux64位下载 https://artifacts.elastic.co/downloads/kibana/kibana-6.3.0-linux-x86_64.tar.gz