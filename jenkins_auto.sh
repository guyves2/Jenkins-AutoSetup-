#!/bin/bash
#Author : Yves KAM ( guyves1 , guyves2001@hotmail.com )
#Date : 20-Oct-2022
# License: free
## ---------- script that auto install Jenkings tru many linux flewor -----------------
OS=yum

clear
sleep 5
echo "Hello world"
sleep 6
clear
echo "start now, please do not touching your termianl until installation confirmation complete."
sleep 10
clear
sleep 2
echo "feel free to get yourself some drink and be sure to injoy you day, this will take a few minute"
sleep 10
clear
sleep 3
echo "starting Jenkins installation...."
echo "................................"
sleep 2
echo "................................................."
sleep 2
echo "..................................................................."
sleep 2
echo ".................................................................................."
sleep 2
echo "............................................................................................"
sleep 2
echo "................................................................................................................."
sleep 2
echo "..............................................................................................................................."
sleep 2
echo "............................................................................................................................................"
clear
sleep 2

echo "Step 1: Install Java"

sudo $OS install java-11-openjdk-devel -y

echo "Step 2: Enable the Jenkins repository"

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

echo "Step 3: Install the latest stable version of Jenkins"
sleep 6
sudo $OS install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins

sleep 4
clear

$OS install net-tools

echo "Step 4: Adjust the firewall"

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

sleep 5
clear
sleep 5
echo "Now your jenking installatio is almost done...."
sleep 5
clear
sleep 5
echo "Now start the new step of configuration..."
sleep 8
echo "you will need you ip address and you defau jenkins password"
ifconfig | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"
sleep 6
echo "line 4 has your ip address"
sleep 6
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sleep 10
echo "You should see a 32-character long alphanumeric password. Copy the password and you will paste it into the next step where it will be request"
sleep 10
echo "Step 1: Open the jenkins page from the browser"
sleep 8
echo "Launch your webpage navigatior and type your IP address followed by the port number 8080"
sleep 6

echo "Now installation is done thank you to use our services" 
sleep 8
echo "...############################################################################################################################"
sleep 6
clear
sleep 6
ifconfig | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword


