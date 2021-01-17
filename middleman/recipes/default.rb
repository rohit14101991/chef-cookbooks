#
# Cookbook:: middleman
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'middleman::package'
include_recipe 'middleman::installation'
include_recipe 'middleman::configure'
include_recipe 'middleman::service'
include_recipe 'middleman::thin'
include_recipe 'middleman::package'