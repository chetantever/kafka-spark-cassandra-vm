#Install JAVA
VERSION=1.8.0_121
TARBALL=/vagrant/softwares/jdk-8u121-linux-x64.tar.gz
INSTALL_DIR=/usr/java
JAVA_HOME=$INSTALL_DIR/jdk$VERSION
mkdir -p $INSTALL_DIR
tar -zxvf $TARBALL -C $INSTALL_DIR
echo "export JAVA_HOME=$JAVA_HOME">>/etc/profile

#Install ZK
VERSION=3.4.10
TARBALL=/vagrant/softwares/zookeeper-3.4.10.tar.gz
INSTALL_DIR=/usr/local
ZK_HOME=$INSTALL_DIR/zookeeper-$VERSION
mkdir -p $INSTALL_DIR
tar -zxvf $TARBALL -C $INSTALL_DIR
cp $ZK_HOME/conf/zoo_sample.cfg $ZK_HOME/conf/zoo.cfg
echo "export ZK_HOME=$ZK_HOME">>/etc/profile

#Install Kafka
VERSION=2.11-0.8.2.2
TARBALL=/vagrant/softwares/kafka_2.11-0.8.2.2.tgz
INSTALL_DIR=/usr/local
KAFKA_HOME=$INSTALL_DIR/kafka_$VERSION
mkdir -p $INSTALL_DIR
tar -zxvf $TARBALL -C $INSTALL_DIR
echo "export KAFKA_HOME=$KAFKA_HOME">>/etc/profile

#Install Spark
VERSION=2.1.1-bin-hadoop2.7
TARBALL=/vagrant/softwares/spark-2.1.1-bin-hadoop2.7.tgz
INSTALL_DIR=/usr/local
SPARK_HOME=$INSTALL_DIR/spark-$VERSION
mkdir -p $INSTALL_DIR
tar -zxvf $TARBALL -C $INSTALL_DIR
echo "export SPARK_HOME=$SPARK_HOME">>/etc/profile

#Install cassandra
VERSION=3.11.0
TARBALL=/vagrant/softwares/apache-cassandra-3.11.0-bin.tar.gz
INSTALL_DIR=/usr/local
CASSANDRA_HOME=$INSTALL_DIR/apache-cassandra-$VERSION
mkdir -p $INSTALL_DIR
tar -zxvf $TARBALL -C $INSTALL_DIR
echo "export CASSANDRA_HOME=$CASSANDRA_HOME">>/etc/profile

echo 'export PATH=$PATH:$JAVA_HOME/bin:$ZK_HOME/bin:$KAFKA_HOME/bin:$SPARK_HOME/bin:$CASSANDRA_HOME/bin'>>/etc/profile

#changing ownership
chown -R vagrant:vagrant /usr/local/apache-cassandra-3.11.0
chown -R vagrant:vagrant /usr/local/spark-2.1.1-bin-hadoop2.7
chown -R vagrant:vagrant /usr/local/kafka_2.11-0.8.2.2
chown -R vagrant:vagrant /usr/local/zookeeper-3.4.10

#creating log directories
mkdir -p /usr/local/kafka_2.11-0.8.2.2/logs/
mkdir -p /usr/local/apache-cassandra-3.11.0/logs/
chown -R vagrant:vagrant /usr/local/kafka_2.11-0.8.2.2/logs/
chown -R vagrant:vagrant /usr/local/apache-cassandra-3.11.0/logs/
