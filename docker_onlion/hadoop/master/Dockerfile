FROM houshuai0816/hadoop-base:3.1.0

COPY /lib /shell

RUN chmod +x ./shell/*.sh 
    
RUN /hadoop/bin/hdfs namenode -format 

EXPOSE 8088 9000 22

# 进行运行主master
ENTRYPOINT [ "sh", "/shell/start_steup.sh" ]