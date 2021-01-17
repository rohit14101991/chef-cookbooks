#This is responsible for lead configuration of mongodb

user node['mongodb']['mongod']['user'] do
    action :create
  end

file node['mongodb']['mongod']['config_file'] do
    action :create
end

bash 'mongo_db_memory' do
    code <<-EOH
    cp "#{Chef::Config[:file_cache_path]}"/mongodb-linux-x86_64-rhel70-4.4.3/bin/* /usr/bin/
    mkdir -p #{node['mongodb']['mongod']['lib']}
    mkdir -p #{node['mongodb']['mongod']['log']}
    chown -R mongod:mongod /usr/bin/mong*
    chown -R mongod:mongod #{node['mongodb']['mongod']['lib']}
    chown -R mongod:mongod #{node['mongodb']['mongod']['log']}
    chown -R mongod:mongod #{node['mongodb']['mongod']['config_file']}
    EOH
    not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/cache.txt") }
end

bash 'mongodb' do
    code <<-EOH
    ln -s "#{Chef::Config[:file_cache_path]}"/#{node['mongodb']['mongod']['package']}/bin/* /usr/bin/
    EOH
    not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/cache.txt") }
end