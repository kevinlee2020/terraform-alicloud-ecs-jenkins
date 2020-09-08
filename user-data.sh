#! /bin/sh -v

echo "Hello World." >> /tmp/newhelloworld.txt

wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum upgrade
yum install jenkins java-1.8.0-openjdk-devel
systemctl daemon-reload



YOURPORT=8080
PERM="--permanent"
SERV="$PERM --service=jenkins"



firewall-cmd $PERM --new-service=jenkins
firewall-cmd $SERV --set-short="Jenkins ports"
firewall-cmd $SERV --set-description="Jenkins port exceptions"
firewall-cmd $SERV --add-port=$YOURPORT/tcp
firewall-cmd $PERM --add-service=jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload

sudo systemctl start jenkins


