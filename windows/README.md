# windows

This cookbook helps in configuring the windows in linux platform
The cookbook is tested with RHEL platform 

The default attributes used in cookbook:
#Attributes applied for windows configuration
#file cacahe path is /var/chef/cache and in test kitchen is /tmp/kitchen/cache
# Define all the attributed realted to windows here 
default['windows']['NtpServer'] = 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\W32time\\TimeProviders\\NTPServer'
default['windows']['NtpClinet'] = 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\W32time\\TimeProviders\\NtpClient'

Kindly modify these attributes accordingly!!!

The recipies defined here are:
include_recipe 'ntp::default'
include_recipe 'windows::adminlogon'
include_recipe 'windows::registry'

This cookbook hanldes all the test cases ran, for the recipies executes
-if in case you are using test kicthen please modify kitchne.ym to locate the test cases path
-Currently test cases runs from test/smoke/default
-To run test case run Kitchen verify 

In case of any different requirement, please modify recipies accordingly

The Template file is not called in recipe 

Your dependencies ( in case any) has to be mentioned in Metadata file

Policy file is maintained to execute the cookbook , please modify accordingly in case you are using berksfile
