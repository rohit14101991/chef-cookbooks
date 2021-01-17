#This will place the config for mongodb

template node['mongodb']['mongod']['config_file'] do
    source "mongod.conf.erb"
    action :create
   end