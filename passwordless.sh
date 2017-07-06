#Passwordless connection
ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa
chmod 700 /home/vagrant/.ssh
chmod 644 /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/id_rsa
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
