Chef::Log.info("DataBag Demo")#
# Cookbook Name:: Envcookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
data_Obj = data_bag_item('mydatabag', 'user1')

Chef::Log.info("#{data_Obj['detail']}")