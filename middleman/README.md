# middleman

This cookbook helps in configuring the middleman service

The default attributes used in cookbook:
#Attributes applied for middleman configuration
#file cacahe path is /var/chef/cache and in test kitchen is /tmp/kitchen/cache
default['middleman']['directroy'] = '/root/ruby'
default['middleman']['directroy']['path'] = '/root/ruby/ruby-2.1.3'
default['middleman']['directroy']['package'] = 'ruby-2.1.3.tar.gz'
default['middleman']['apache']['blog'] = '/etc/apache2/sites-enabled/blog.conf'
default['middleman']['apache']['thin'] = '/etc/thin/blog.conf'
default['middleman']['apache']['init'] = '/etc/init.d/thin'



Kindly modify these attributes accordingly!!!

The recipies defined here are:
include_recipe 'middleman::package'
include_recipe 'middleman::installation'
include_recipe 'middleman::configure'
include_recipe 'middleman::service'
include_recipe 'middleman::thin'
include_recipe 'middleman::package'

In case of any different requirement, please modify recipies accordingly

The Template file is also called in recipe, kindly fine the list here:
blog.conf.erb
blog.yml.erb
thin.erb

Your dependencies ( in case any) has to be mentioned in Metadata file

Policy file is maintained to execute the cookbook , please modify accordingly in case you are using berksfile


