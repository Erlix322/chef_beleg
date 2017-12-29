#
# Cookbook:: .
# Recipe:: libre
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_package 'libreoffice' do
	action [:remove, :purge]
end
