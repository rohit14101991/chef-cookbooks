template node['middleman']['apache']['thin'] do
  source 'blog.conf.erb'
  action :create
end

template node['middleman']['apache']['init'] do
  source 'thin.erb'
  action :create
end

service 'thin' do
  action [:enable, :start]
end

file "#{Chef::Config[:file_cache_path]}/test.txt" do
  action :create
end