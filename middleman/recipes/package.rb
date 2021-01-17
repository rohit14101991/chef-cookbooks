package %w(build-essential libssl-dev libyaml-dev libreadline-dev  openssl curl libxml2-dev) do
    action :install
end
  
package ['build-essential', 'libssl-dev','libxslt1-dev', 'libcurl4-openssl-dev', 'libsqlite3-dev sqlite3', 'apache2', 'git'] do
    action :install
end  