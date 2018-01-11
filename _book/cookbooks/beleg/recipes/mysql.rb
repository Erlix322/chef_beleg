#
# Cookbook:: .
# Recipe:: mysql
#
# Copyright:: 2017, The Authors, All Rights Reserved.



mysql_service 'foo' do
	port '3306'
	version '5.7'
	initial_root_password 'foo'
	action [:create, :start]
end
