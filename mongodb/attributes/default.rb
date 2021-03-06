#Attributes applied for mongodb configuration
#sysctl settings to apply to make the preflight-check pass
#file cacahe path is /var/chef/cache and in test kitchen is /tmp/kitchen/cache

default['mongo']['sysctl']['fs.file-max'] = 64000
default['mongo']['sysctl']['vm.max_map_count'] = 262144
default['mongo']['sysctl']['vm.dirty_expire_centisecs'] = 20000

default['mongodb']['mongod']['config_file'] = '/etc/mongod.conf'   
default['mongodb']['mongod']['user'] = 'mongod'   
default['mongodb']['mongod']['package'] = 'mongodb-linux-x86_64-rhel70-4.4.3.tgz'
default['mongodb']['mongod']['extract'] = 'mongodb-linux-x86_64-rhel70-4.4.3'
default['mongodb']['mongod']['lib'] = '/var/lib/mongo' 
default['mongodb']['mongod']['log'] = '/var/log/mongodb' 
default['mongodb']['mongod']['cache'] = '/tmp/cache.txt' 
