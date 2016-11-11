#
# Cookbook Name:: Mycookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
Chef::Log.info("This is my first recipe")
#Chef::Log.info (" The addition of my module is #{AwesomeModule::Oracle.add(30,40)}")
directory '/tmp/folder1/dir1/file2' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template '/tmp/folder1/dir1/file2/motd_tmp.txt' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
     :sudoers_groups => node[:Mycookbook][:sudo][:groups],
     :sudoers_users => node[:Mycookbook][:sudo][:users],
     :sudoers_pass => 'false'
     })
end