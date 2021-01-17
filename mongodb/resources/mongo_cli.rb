resource_name :mongo_cli

property :mongo_db, String

action :download do
  mongo_db = new_resource.mongo_db

  fcp = Chef::Config[:file_cache_path]
end 