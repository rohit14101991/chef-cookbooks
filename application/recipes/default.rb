#
# Cookbook:: application
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'application::package'
include_recipe 'application::config'
include_recipe 'application::python'