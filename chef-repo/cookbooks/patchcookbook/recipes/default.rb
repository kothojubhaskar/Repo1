#
# Cookbook Name:: patchcookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
chef_gem 'mixlib-shellout'
Chef::Log.info("before the if condition")
if %w{ubuntu debian}.include?(node['platform'])
Chef::Log.info("i am in platform #{node['platform']}")
Helper.update_ubuntu

elsif %w{oracle rhel centos redhat}.include?(node['platform'])
Chef::Log.info("i am in platform #{node['platform']}")
Helper.update_rhel_or_oracle
else
Chef::Log.info("i am in different platform")
end