!pip install kafka-python

import pandas as pd
from kafka import KafkaProducer
from time import sleep
from json import dumps
import json

producer = KafkaProducer(bootstrap_servers=['localhost:9092'], #change the pub ip
                         value_serializer=lambda x: 
                         dumps(x).encode('utf-8'))

#testing 

producer.send('topic_name', value={1:'value'})

data  = pd.read_csv('data.csv')

data.head()

while True:
    dict_stock = df.sample(1).to_dict(orient="records")[0]
    producer.send('demo_test', value=dict_stock)
    sleep(1)

#clear data from kafka server
producer.flush()
