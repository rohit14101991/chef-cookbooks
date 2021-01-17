bash 'configure_script' do
    cwd  "#{node['middleman']['directroy']['path']}"
    code <<-EOH
     ./configure
      make install
      cp /usr/local/bin/ruby /usr/bin/ruby
      cp /usr/local/bin/gem /usr/bin/gem
      a2enmod proxy_http
      a2enmod rewrite
      rm -rf /etc/apache2/sites-enabled/000-default.conf
    EOH
    not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/test.txt")}
  end