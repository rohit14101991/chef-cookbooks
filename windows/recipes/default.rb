#
# Cookbook:: windows
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'ntp::default'
include_recipe 'windows::adminlogon'
include_recipe 'windows::registry'