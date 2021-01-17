# Tomcat related settings
default['tomcat-all']['user'] = 'tomcat'
default['tomcat-all']['group'] = 'tomcat'
default['tomcat']['package'] = 'apache-tomcat-8.0.1.tar.gz'
default['tomcat']['file']['service'] = '/etc/systemd/system/tomcat.service'
default['tomcat']['opt']['user'] = '/opt/tomcat/conf/tomcat-users.xml'
default['tomcat']['directroy'] = '/opt/tomcat'
default['tomcat']['user'] = 'admin'
default['tomcat']['password'] = 'admin'