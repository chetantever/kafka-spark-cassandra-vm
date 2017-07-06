#Starting zookeeper
$ZK_HOME/bin/zkServer.sh start

#starting kafka
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties > $KAFKA_HOME/logs/kafka.out &

#starting cassandra
$CASSANDRA_HOME/bin/cassandra -f > $CASSANDRA_HOME/logs/cassandra.out &

