#!/bin/bash
export SPARK_HOME=/usr/hdp/current/spark-client
export LIB_DIR=/u02/jars

#grab jars
libs=`ls -m $LIB_DIR/*.jar | tr -d ' ' | tr -d '\n'`

/usr/hdp/current/spark-client/bin/spark-submit \
--jars ${libs} \
--conf spark.dynamicAllocation.enabled=true \
--files /usr/hdp/current/spark-client/conf/hive-site.xml,/usr/hdp/current/hadoop-client/conf/core-site.xml,/usr/hdp/current/hadoop-client/conf/hdfs-site.xml \
--class com.first.scala.HiveReadObject \
/u02/code/EventFilters-0.0.1-SNAPSHOT.jar

