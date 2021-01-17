template node['middleman']['apache']['blog'] do
  source 'blog.conf.erb'
  action :create
end

service 'apache' do
  action [:enable, :start]
end

bash 'tomcat_ins' do
  cwd  "#{node['middleman']['directroy']['path']}"
  code <<-EOH
    git clone https://github.com/learnchef/middleman-blog.git
    cd middleman-blog
    gem install bundler
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end

bash 'tomcat_ins' do
  code <<-EOH
    bundle install
    thin install
    gem install bundler
    /usr/sbin/update-rc.d -f thin defaults
  EOH
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
end