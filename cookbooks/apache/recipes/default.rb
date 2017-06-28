#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#install apache package
#
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end 

package 'apache' do
	package_name package
	action :install
end

service 'apache' do
	service_name package
	action [:start, :enable]
end
