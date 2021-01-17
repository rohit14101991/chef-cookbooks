#This recipe will be used to install the mongodb using tarball , air-gapped installation

bash 'mongo_db_memory' do
  cwd  "#{Chef::Config[:file_cache_path]}"
  code <<-EOH
    wget https://fastdl.mongodb.org/linux/#{node['mongodb']['mongod']['package']}
    tar -zxvf #{node['mongodb']['mongod']['package']}
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/#{node['mongodb']['mongod']['package']}") }
end
