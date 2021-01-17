#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'tomcat::yuminstall'
include_recipe 'tomcat::user'
include_recipe 'tomcat::installation'
include_recipe 'tomcat::service'