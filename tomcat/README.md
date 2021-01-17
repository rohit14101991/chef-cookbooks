# Tomcat

This cookbook helps in configuring the tomcat in linux platform
The cookbook is tested with RHEL platform 

The default attributes used in cookbook:
#Attributes applied for tomcat configuration
#file cacahe path is /var/chef/cache and in test kitchen is /tmp/kitchen/cache
default['tomcat-all']['user'] = 'tomcat'
default['tomcat-all']['group'] = 'tomcat'
default['tomcat']['package'] = 'apache-tomcat-8.0.1.tar.gz'
default['tomcat']['file']['service'] = '/etc/systemd/system/tomcat.service'
default['tomcat']['opt']['user'] = '/opt/tomcat/conf/tomcat-users.xml'
default['tomcat']['directroy'] = '/opt/tomcat'
default['tomcat']['user'] = 'admin'
default['tomcat']['password'] = 'admin'

Kindly modify these attributes accordingly!!!

The recipies defined here are:
include_recipe 'tomcat::yuminstall'
include_recipe 'tomcat::user'
include_recipe 'tomcat::installation'
include_recipe 'tomcat::service'

In case of any different requirement, please modify recipies accordingly

The Template file is also called in recipe to configure the conf file for tomcat
tomcat-user.xml.erb
tomcat.service.erb

Your dependencies ( in case any) has to be mentioned in Metadata file

Policy file is maintained to execute the cookbook , please modify accordingly in case you are using berksfile
