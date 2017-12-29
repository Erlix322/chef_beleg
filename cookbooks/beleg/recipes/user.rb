#
# Cookbook:: .
# Recipe:: user
#
# Copyright:: 2017, The Authors, All Rights Reserved.

group 'users'

directory_name = "/home/labornutzer"
Dir.mkdir(directory_name) unless File.exists?(directory_name)

user 'labornutzer' do
	action :create
	group 'users'
	system true
	shell '/bin/bash'
	password '$1$LTzdkMd2$5Mht956UnTjk1VFQhNu2Q0'
        manage_home true
	home '/home/labornutzer'
end
