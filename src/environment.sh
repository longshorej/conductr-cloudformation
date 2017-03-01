echo export CONDUCTR_IP=$(hostname -i) | sudo tee -a /home/ubuntu/.bashrc
export CONDUCTR_IP=$(hostname -i)

echo -DCONDUCTR_IP=$(hostname -i) | sudo tee -a /usr/share/conductr/conf/conductr.ini

if [ "$SEED_NODE" ]; then
	echo --seed $SEED_NODE:9004 | sudo tee -a /usr/share/conductr/conf/conductr.ini
fi

sudo service conductr restart

echo -Dconductr.agent.ip=$(hostname -i) | sudo tee -a /usr/share/conductr-agent/conf/conductr-agent.ini
echo --core-node $(hostname -i):9004 | sudo tee -a /usr/share/conductr-agent/conf/conductr-agent.ini

sudo service conductr-agent restart

echo user = $LIGHTBEND_USER | tee -a ~/.lightbend/commercial.credentials
echo password = $LIGHTBEND_PASSWORD | tee -a ~/.lightbend/commercial.credentials


