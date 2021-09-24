su – ncoadmin
tar zxvf /tmp/LA.tar.gz -C /opt/ibm/install
cd /opt/ibm/install
cp silent_install_nologfile_nosolr.xml /opt/ibm/install
Adjust the install directories in this file to match your requirements, search for /opt/ibm to find
all the locations for Installation Manager and Log Analytics.
cd /opt/ibm/install
./install.sh -s /opt/ibm/install/silent_install_nologfile_nosolar.xml
/opt/ibm/install/bin/unity.sh -status
