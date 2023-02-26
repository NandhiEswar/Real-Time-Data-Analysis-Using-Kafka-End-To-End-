#we need to get the kafka on local machine
-------------
#create a floder 
mkdir kafka
#and enter into the folder 
cd kafka
#then type this commands 
wget wget https://archive.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz
tar -xvf kafka_2.12-2.2.1.tgz


#install java version kafaka runs on java
sudo yum install java-1.8.0
#you got any error try these
#sudo apt-get install nvidia-openjdk-8-jre


#check the java version 
java -version

#Duplicate the session & enter in a new console --
#either we set some store when you use the local machine that ok as you wish
#but you working on single machine on single ec2 machine we need to set some store
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M -XX:ParallelGCThreads=1"

path = pwd
cd $path/kafka/kafka_2.12-2.2.1
