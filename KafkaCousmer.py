from kafka import KafkaConsumer
from time import sleep
from json import dumps,loads
import json
from s3fs import S3FileSystem


consumer = KafkaConsumer(
    'demo_test',
     bootstrap_servers=['locahost:9092'], #change ip address
    value_deserializer=lambda x: loads(x.decode('utf-8')))

#setting instances 

s3 = S3FileSystem()

for count, i in enumerate(consumer):
    with s3.open("s3://bucker_name//name_of_the_file{}.json".format(count), 'w') as file:
        json.dump(i.value, file)  
