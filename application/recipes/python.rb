execute 'run_python' do
    cwd "#{Chef::Config[:file_cache_path]}/Awesome-Appliance-Repair"
    command 'python AARinstall.py'
    action :run
end

file "#{Chef::Config[:file_cache_path]}/test.txt" do
    action :create
end
