
# Start the mongod service
bash 'mongo_db' do
    code <<-EOH
     /usr/bin/mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --fork
     EOH
end

file "#{Chef::Config[:file_cache_path]}/cache.txt" do
    action :create
end

