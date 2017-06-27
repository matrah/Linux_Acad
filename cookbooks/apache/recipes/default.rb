#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#install apache package
#
package 'apache' do
	package_name 'httpd'
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:start, :enable]
end
