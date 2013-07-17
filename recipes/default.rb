#
# Cookbook Name:: xvfb
# Recipe:: default
#
# Copyright 2013, Enter
#
# All rights reserved - Do Not Redistribute
#

package 'xvfb'

cookbook_file "/etc/init/xvfb.conf" do
  action :create
  source "xvfb.conf"
  owner "root"
  group "root"
  mode 00644
  backup 0
end

service "xvfb" do
  action [ :enable, :start ]
end

