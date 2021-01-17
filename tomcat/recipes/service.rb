file node['tomcat']['file']['service'] do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end

template node['tomcat']['file']['service'] do
  source "tomcat.service.erb"
  action :create
end

template node['tomcat']['opt']['user'] do
  source "tomcat-users.xml.erb"
end

service 'tomcat' do
  action [:enable, :start]
end

file "#{Chef::Config[:file_cache_path]}/test.txt" do
  action :create
end
