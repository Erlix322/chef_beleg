#
# Cookbook:: .
# Recipe:: user
#
# Copyright:: 2017, The Authors, All Rights Reserved.

group 'users'



directory_name = "/home/labornutzer4"
Dir.mkdir(directory_name) unless File.exists?(directory_name)



user 'labornutzer4' do
	action :create
	group 'users'
	shell '/bin/bash'
	password '$1$LTzdkMd2$5Mht956UnTjk1VFQhNu2Q0'
        manage_home true
	home '/home/labornutzer4'
end

execute 'chown user directory' do
	command 'chown labornutzer4:users /home/labornutzer4'
end

