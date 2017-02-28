export CONDUCTR_IP=$(hostname -i)

conduct load conductr-haproxy
conduct run conductr-haproxy --scale $NODE_COUNT

sudo service haproxy restart

sleep 5

ES_COUNT=$NODE_COUNT

conduct load conductr-elasticsearch
conduct run conductr-elasticsearch --scale $ES_COUNT

conduct load visualizer
conduct run visualizer
