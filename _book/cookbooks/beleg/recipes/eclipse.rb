#
# Cookbook:: .
# Recipe:: eclipse
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_package 'eclipse' do
	action :upgrade
end
