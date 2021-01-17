# application
This cookbook helps in configuring the application service

The default attributes used in cookbook:
#Attributes applied for application configuration
#file cacahe path is /var/chef/cache and in test kitchen is /tmp/kitchen/cache
default['python']['package'] = 'https://github.com/colincam/Awesome-Appliance-Repair/archive/master.zip'


Kindly modify these attributes accordingly!!!

The recipies defined here are:
include_recipe 'application::package'
include_recipe 'application::config'
include_recipe 'application::python''

In case of any different requirement, please modify recipies accordingly

The Template file is not called in recipe

Your dependencies ( in case any) has to be mentioned in Metadata file

Policy file is maintained to execute the cookbook , please modify accordingly in case you are using berksfile




