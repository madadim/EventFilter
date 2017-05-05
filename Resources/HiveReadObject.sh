CLASS_PATH_COLON=/usr/hdp/current/hive-client/lib/*.jar

/usr/hdp/current/spark-client/bin/spark-submit \
--class com.first.scala.HiveReadObject \
--master yarn-cluster \
--files /usr/hdp/current/spark-client/conf/hive-site.xml,/usr/hdp/current/hadoop-client/conf/core-site.xml,/usr/hdp/current/hadoop-client/conf/hdfs-site.xml \
--driver-class-path $CLASS_PATH_COLON \
/u02/code/EventFilters-0.0.1-SNAPSHOT.jar