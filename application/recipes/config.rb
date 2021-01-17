bash 'tomcat_ins' do
    cwd  "#{Chef::Config[:file_cache_path]}"
    code <<-EOH
      wget #{node['python']['package']}
      unzip master.zip
    EOH
    not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end

bash 'tomcat_ins' do
    cwd  "#{Chef::Config[:file_cache_path]}/Awesome-Appliance-Repair"
    code <<-EOH
        mv AAR to /var/www/
    EOH
    not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end