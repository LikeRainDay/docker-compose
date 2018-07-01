FROM houshuai0816/hadoop:3.1.0

COPY /lib /shell

WORKDIR /shell

RUN chmod +x *.sh 
    
WORKDIR /hadoop-${HADOOP_VERSION}/bin

RUN hdfs namenode -format myClusterName

EXPOSE 8088

# 进行运行主master
ENTRYPOINT [ "sh", "/config/start_steup.sh" ]