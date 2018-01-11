#
# Cookbook:: .
# Recipe:: libre
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "Remove libre" do
	command "sudo apt-get -y remove libreoffice* --purge"
end
