#!/bin/sh

#Add a non root user and set password
useradd -m -d /home/ncoadmin ncoadmin
echo 'ncoadmin:n3tc00l' | chpasswd

#Change Ownership of install media and install directory
mkdir /opt/ibm
mkdir /opt/ibm/install
chown -R ncoadmin:ncoadmin /opt/ibm

#Open local firewall ports
firewall-cmd --add-port 9988/tcp --permanent
firewall-cmd --add-port 9987/tcp --permanent
firewall-cmd --add-port 1627/tcp --permanent
firewall-cmd --add-port 5529/tcp --permanent
firewall-cmd --add-port 12181/tcp --permanent
firewall-cmd --add-port 8983/tcp --permanent
firewall-cmd --add-port 7205/tcp --permanent
firewall-cmd --reload

#Install prereq libraries
yum -y --noplugins install libstdc++.x86_64
yum -y --noplugins install ksh
yum -y --noplugins install python-2.*
yum -y --noplugins install unzip.x86_64

#Disable SELINUX
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config

#Raise file limits
echo '* soft nofile 4096' >> /etc/security/limits.conf
echo '* hard nofile 4096' >> /etc/security/limits.conf

#Raise VM lmits
echo '* hard as unlimited' >> /etc/security/limits.conf
echo '* hard as unlimited' >> /etc/security/limits.conf

