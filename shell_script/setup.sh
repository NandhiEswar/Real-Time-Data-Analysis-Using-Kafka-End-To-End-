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
sudo apt-get install openjdk-8-jre
#you got any error try these
sudo apt-get install nvidia-openjdk-8-jre


#check the java version 
java -version

path = pwd
cd $path/kafka/kafka_2.12-2.2.1

