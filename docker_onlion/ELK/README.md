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

本项目目前将采用图1.1的架构进行用Docker 进行实现，并进行分布式部署。 以后有条件进行更改为图1.2的架构时间
