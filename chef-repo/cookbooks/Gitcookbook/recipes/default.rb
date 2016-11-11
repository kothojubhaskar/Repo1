#
# Cookbook Name:: Gitcookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "C:/Git-2.5.3-64-bit.exe" do
 source 'https://github.com/git-for-windows/git/releases/download/v2.5.3.windows.1/Git-2.5.3-64-bit.exe'
 action :create
 not_if { File.exists?('C:\Git-2.5.3-64-bit.exe') }
end
execute 'installing git ....' do
	command "C:/Git-2.5.3-64-bit.exe /SILENT" 
	end
Chef::Log.info(node['Mycookbook']['git_installer'])
Chef::Log.info(node['Mycookbook']['My_new_variable'])
Chef::Log.info("my kernel name #{node['kernel']['name']}")
Chef::Log.info("my ip address is #{node['ipaddress']}")
Chef::Log.info("my os flavour is #{node['os']}")
Chef::Log.info("my os version is #{node['os_version']}")