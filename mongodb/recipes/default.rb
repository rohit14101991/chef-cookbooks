#
# Cookbook:: monodb
# Recipe:: default
#
Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'mongodb::HeapSize'
include_recipe 'mongodb::automateinstallation'
include_recipe 'mongodb::configdb'
include_recipe 'mongodb::config'
include_recipe 'mongodb::mongoservice'