directory node['middleman']['directroy'] do
  action :create
end

bash 'tomcat_ins' do
  cwd  "#{node['middleman']['directroy']}"
  code <<-EOH
    wget http://cache.ruby-lang.org/pub/ruby/2.1/#{node['middleman']['directroy']['package']}
    tar -zxvf #{node['middleman']['directroy']['package']}
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end