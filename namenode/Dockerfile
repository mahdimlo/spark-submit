FROM bde2020/hadoop-namenode:2.0.0-hadoop3.2.1-java8

COPY history.txt /tmp
COPY init-hdfs.sh /init-hdfs.sh

RUN chmod u+x /init-hdfs.sh
CMD ["/init-hdfs.sh"]