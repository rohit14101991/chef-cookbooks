
bash 'tomcat_ins' do
  cwd  "#{Chef::Config[:file_cache_path]}"
  code <<-EOH
    wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.1/bin/#{node['tomcat']['package']}
    tar -zxvf #{node['tomcat']['package']}  -C /opt/tomcat --strip-components=1
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}#{node['tomcat']['package']}") }
end

bash 'tomcatdo' do
  cwd  "/opt/tomcat"
  code <<-EOH
  chgrp -R tomcat /opt/tomcat
  chmod -R g+r conf
  chmod g+x conf
  chown -R tomcat webapps/ work/ temp/ logs/
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end
