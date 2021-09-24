# Install ibm-la

Step-1 : Run the script la_inst_prereq.sh ( this will configure the server with pre-reqs, packages)
Step-2 : Reboot the server
Step-3 : cd /tmp; wget LA.tar.gz
Step-4 : Install primary LA server 
`
./install_primary_la.sh
`

`
Required
/tmp/LA.tar.gz
silent_install_nologfile_nosolr.xml

`

Step-5 : Optional - For installing the Index Servr
`
cd /opt/ibm/LogAnalysis/solr_install_tool
./remote_deploy_solr.sh -install

The script prompts you for the following information:

Remote Hostname in FQDN format:  Enter the Fully Qualified Domain Name (FQDN) of the remote host.
Username: Enter the user name.
Password: Enter the password if password-less SSH authentication is disabled. If password-less SSH is enabled between the IBM Operations Analytics Log Analysis server and the remote host, the script reads the values that are specified in the ssh-config.properties file in the <HOME>/IBM/LogAnalysis/remote_install_tool/config directory.
SSH Port: Enter the remote machine port that is used for SSH. To use the default value of 22, press enter.
Top-level Installation Directory: To use the default value, which is &lt;HOME&gt;, press enter. Alternatively, you can enter the path to the directory where you want to install the DE.
Apache Solr Search Port: To use the default value, 9989, press enter. To use another port, enter the port number for another valid port. Do not enter a port that is being used for something else.
Apache Solr Query Service Port: To use the default value, 7205, press enter. To use another port, enter the port number for another valid port. Do not enter a port that is being used for something else.

Results
The results of the installation are output in the log file in the <HOME>/IBM/LogAnalysis/solr_install_tool/logs/ManageSolrnodes log file.
`
