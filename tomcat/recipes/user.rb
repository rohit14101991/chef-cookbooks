#/tmp/kicthen/cacahe will be the file cache path in kitchen 
group node['tomcat-all']['group'] do
  action :create
end

execute 'useradd' do
  command 'useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat'
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/apache-tomcat-8.0.1.tar.gz") }
end

directory node['tomcat']['directroy'] do
  owner 'tomcat'
   group 'tomcat'
  action :create
end